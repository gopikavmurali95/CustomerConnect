import 'dart:convert';
import 'dart:developer';

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
    try {
      final response = await http
          .post(Uri.parse(baseUrl + customerInsightsCustomersUrl), body: {
        "UserID": userId,
        "Area": area,
        "SubArea": subarea,
        "Route": route,
      });
      log('in repo');
      if (response.statusCode == 200) {
        // log(response.body);
        Map<String, dynamic> json = jsonDecode(response.body);

        final List<dynamic> cusdetaildata = json['result'];
        List<CusInsCustomersModel> cuslist = cusdetaildata
            .map<CusInsCustomersModel>(
                (json) => CusInsCustomersModel.fromJson(json))
            .toList();

        return right(cuslist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('cus error: $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
