import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_ins_tr_n_counts/cus_ins_tr_n_counts.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IcusInsCountsRepo)
class CusTrnCOuntsRepo implements IcusInsCountsRepo {
  @override
  Future<Either<MainFailures, CusInsTrNCounts>> getCusInsCounts(
      String userId, String cusId, String fDate, String toDate) async {
    try {
      final response =
          await http.post(Uri.parse(baseUrl + cusinsTrnCountUrl), body: {
        "UserID": userId,
        "cus_ID": cusId,
        "FromDate": fDate,
        "ToDate": toDate,
      });
      /* log({
        "UserID": userId,
        "cus_ID": cusId,
        "FromDate": fDate,
        "ToDate": toDate,
      }.toString()); */
      if (response.statusCode == 200) {
        // logger.w('Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final countModel = CusInsTrNCounts.fromJson(json["result"][0]);
        return right(countModel);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('count error : $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
