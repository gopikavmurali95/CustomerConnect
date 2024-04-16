import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/ar_total_collection_model/ar_total_collection_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_ar_h_eader_model/cus_ins_ar_h_eader_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_ar_header_in_model/cus_ins_ar_header_in_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICusInsArRepo)
class CusInsArRepo implements ICusInsArRepo {
  @override
  Future<Either<MainFailures, List<CusInsArHEaderModel>>> getARHeaders(
      CusInsArHeaderInModel arin) async {
    try {
      final response =
          await http.post(Uri.parse(baseUrl + cusInsArHeaderUrl), body: {
        "UserID": arin.userId,
        "From_Date": arin.fromDate,
        "To_Date": arin.toDate,
        "Area": arin.area,
        "SubArea": arin.area,
        "Route": arin.route,
        "cus_ID": arin.cusId
      });

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> arheaderdata = json['result'];
        List<CusInsArHEaderModel> headerlist = arheaderdata
            .map<CusInsArHEaderModel>(
                (json) => CusInsArHEaderModel.fromJson(json))
            .toList();

        return right(headerlist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('cusins AR error$e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, ArTotalCollectionModel>> getArTotal(
      CusInsArHeaderInModel totalIn) async {
    try {
      final response = await http.post(Uri.parse(baseUrl + cusInsArTotalUrl),
          body: totalIn.toJson());
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final artotal = ArTotalCollectionModel.fromJson(json["result"][0]);
        return right(artotal);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('ar error : $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
