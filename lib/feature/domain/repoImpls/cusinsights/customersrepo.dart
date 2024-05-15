import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:isolate';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICusInsightsCustomersRepo)
class CusInsCustomersRepo implements ICusInsightsCustomersRepo {
  @override
  Future<Either<MainFailures, List<CusInsCustomersModel>>> getCustomers(
      String userId, String area, String subarea, String route) async {
    Completer<Either<MainFailures, List<CusInsCustomersModel>>> completer =
        Completer();

    // Create a new receive port to receive response from the isolate
    ReceivePort receivePort = ReceivePort();

    // Spawn a new isolate
    await Isolate.spawn(_fetchDataIsolate, {
      'userId': userId,
      'area': area,
      'subarea': subarea,
      'route': route,
      'receivePort': receivePort.sendPort,
    });

    receivePort.listen((data) {
      if (data is MainFailures) {
        completer.complete(left(data));
      } else if (data is List<CusInsCustomersModel>) {
        completer.complete(right(data));
      }
      receivePort.close();
    });

    return completer.future;
  }

  void _fetchDataIsolate(Map<String, dynamic> message) async {
    try {
      final response = await http.post(
        Uri.parse(baseUrl + customerInsightsCustomersUrl),
        body: {
          'UserID': message['userId'],
          'Area': message['area'],
          'SubArea': message['subarea'],
          'Route': message['route'],
        },
      );

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        final List<dynamic> cusdetaildata = json['result'];
        final cuslist = cusdetaildata
            .map<CusInsCustomersModel>(
                (json) => CusInsCustomersModel.fromJson(json))
            .toList();
        message['receivePort'].send(cuslist);
      } else {
        message['receivePort'].send(
            const MainFailures.networkerror(error: 'Something went Wrong'));
      }
    } catch (e) {
      log('cus error: $e');
      message['receivePort'].send(const MainFailures.serverfailure());
    }
  }
}
