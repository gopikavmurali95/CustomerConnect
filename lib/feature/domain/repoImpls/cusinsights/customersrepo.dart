import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:isolate';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customer_count_model/cus_ins_customer_count_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

bool _isNoDataResponse(String responseBody) {
  return responseBody.trim().toLowerCase().startsWith('nodatares');
}

@LazySingleton(as: ICusInsightsCustomersRepo)
class CusInsCustomersRepo implements ICusInsightsCustomersRepo {
  @override
  Future<Either<MainFailures, List<CusInsCustomersModel>>> getCustomers(
      String userId,
      String area,
      String subarea,
      String route,
      String searchString,
      String pagenum) async {
    Completer<Either<MainFailures, List<CusInsCustomersModel>>> completer =
        Completer();

    ReceivePort receivePort = ReceivePort();

    await Isolate.spawn(_fetchDataIsolate, {
      'userId': userId,
      'area': area,
      'subarea': subarea,
      'route': route,
      'searchString': searchString,
      'pagenum': pagenum,
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
          'SearchString': message['searchString'],
          'Pagenum': message['pagenum'],
        },
      );
      log({
        'UserID': message['userId'],
        'Area': message['area'],
        'SubArea': message['subarea'],
        'Route': message['route'],
        'SearchString': message['searchString'],
        'Pagenum': message['pagenum'],
      }.toString());
      final rawBody = utf8.decode(response.bodyBytes).trim();

      if (response.statusCode == 200) {
        log('Cus insights customers raw response: $rawBody');

        if (rawBody.isEmpty || _isNoDataResponse(rawBody)) {
          message['receivePort'].send(<CusInsCustomersModel>[]);
          return;
        }

        final decoded = jsonDecode(rawBody);
        if (decoded is! Map<String, dynamic>) {
          message['receivePort'].send(const MainFailures.serverfailure());
          return;
        }

        final result = decoded['result'];
        if (result is! List) {
          message['receivePort'].send(<CusInsCustomersModel>[]);
          return;
        }

        final cuslist = result
            .map<CusInsCustomersModel>((item) => CusInsCustomersModel.fromJson(
                Map<String, dynamic>.from(item as Map)))
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

  @override
  Future<Either<MainFailures, CusInsCustomerCountModel>> getCustomerscount(
      String userId,
      String area,
      String subarea,
      String route,
      String searchString,
      String pagenum) async {
    try {
      final response =
          await http.post(Uri.parse(baseUrl + cusInsightCustomersCount), body: {
        'UserID': userId,
        'Area': area,
        'SubArea': subarea,
        'Route': route,
        'SearchString': searchString,
        'Pagenum': pagenum,
      });

      log({
        'UserID': userId,
        'Area': area,
        'SubArea': subarea,
        'Route': route,
        'SearchString': searchString,
        'Pagenum': pagenum,
      }.toString());

      final rawBody = utf8.decode(response.bodyBytes).trim();

      if (response.statusCode == 200) {
        log(rawBody);

        if (rawBody.isEmpty || _isNoDataResponse(rawBody)) {
          return right(CusInsCustomerCountModel(totalCount: '0'));
        }

        final decoded = jsonDecode(rawBody);
        if (decoded is! Map<String, dynamic>) {
          return left(const MainFailures.serverfailure());
        }

        final result = decoded['result'];
        if (result is! List || result.isEmpty) {
          return right(CusInsCustomerCountModel(totalCount: '0'));
        }

        final countModel = CusInsCustomerCountModel.fromJson(
          Map<String, dynamic>.from(result.first as Map),
        );
        return right(countModel);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }
}
