import 'dart:convert';
import 'dart:developer';
import 'package:customer_connect/constants/fonts.dart';
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

      if (response.statusCode == 200) {
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
      if (response.statusCode == 200) {
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
    try {
      final response = await http.post(
          Uri.parse(baseUrl + arTotalCollectionUrl),
          body: totalIn.toJson());
      if (response.statusCode == 200) {
        logger.w('Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final artotal = ArTotalCollectionModel.fromJson(json["result"][0]);
        return right(artotal);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('login error : $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
