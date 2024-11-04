import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:isolate';
// import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/ar_detail_model/ar_detail_model.dart';
import 'package:customer_connect/feature/data/models/ar_header_model/ar_header_model.dart';
import 'package:customer_connect/feature/data/models/ar_total_collection_model/ar_total_collection_model.dart';
import 'package:customer_connect/feature/data/models/ar_total_in_model/ar_total_in_model.dart';
import 'package:dartz/dartz.dart';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IArCollectionRepo)
class ArCollectionRepo implements IArCollectionRepo {
  @override
  Future<Either<MainFailures, List<ArDetailModel>>> getARDetails(
      String arhID) async {
    try {
      final response = await http
          .post(Uri.parse(baseUrl + arDeatilUrl), body: {"arh_ID": arhID});
      // log("details : ${response.body}");
      log({"arh_ID": arhID}.toString());
      if (response.statusCode == 200) {
        log("ar detail: ${response.body}");
        Map<String, dynamic> json = jsonDecode(response.body);

        final List<dynamic> ardetaildata = json['result'];
        List<ArDetailModel> detaillist = ardetaildata
            .map<ArDetailModel>((json) => ArDetailModel.fromJson(json))
            .toList();

        return right(detaillist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<ArHeaderModel>>> getARHeaders(
      ArTotalInModel arin) async {
    try {
      final response = await http.post(Uri.parse(baseUrl + arHeaderUrl),
          body: arin.toJson());
      log(jsonEncode(arin));
      if (response.statusCode == 200) {
        // log(response.body);
        Map<String, dynamic> json = jsonDecode(response.body);

        final List<dynamic> arheaderdata = json['result'];
        List<ArHeaderModel> headerlist = arheaderdata
            .map<ArHeaderModel>((json) => ArHeaderModel.fromJson(json))
            .toList();
        return right(headerlist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('loading error$e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, ArTotalCollectionModel>> getArTotal(
      ArTotalInModel totalIn) async {
    Completer<Either<MainFailures, ArTotalCollectionModel>> completer =
        Completer();

    ReceivePort receivePort = ReceivePort();

    await Isolate.spawn(_fetchDataIsolate, {
      'totalIn': totalIn.toJson(),
      'receivePort': receivePort.sendPort,
    });

    receivePort.listen((data) {
      if (data is MainFailures) {
        completer.complete(left(data));
      } else if (data is ArTotalCollectionModel) {
        completer.complete(right(data));
      }
      receivePort.close();
    });

    return completer.future;
  }

  void _fetchDataIsolate(Map<String, dynamic> message) async {
    try {
      final response = await http.post(
        Uri.parse(baseUrl + arTotalCollectionUrl),
        body: message['totalIn'],
      );

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body);
        final artotal = ArTotalCollectionModel.fromJson(json['result'][0]);
        message['receivePort'].send(artotal);
      } else {
        message['receivePort'].send(
            const MainFailures.networkerror(error: 'Something went Wrong'));
      }
    } catch (e) {
      log('ar error : $e');
      message['receivePort'].send(const MainFailures.serverfailure());
    }
  }
}
