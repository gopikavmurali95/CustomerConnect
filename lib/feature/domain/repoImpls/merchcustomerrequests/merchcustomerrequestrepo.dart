import 'dart:convert';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/merch_customer_request_header_model/merch_customer_request_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IMerchCustomerRequestRepo)
class MerchCustomerRequestRepo implements IMerchCustomerRequestRepo {
  @override
  Future<Either<MainFailures, List<MerchCustomerRequestHeaderModel>>>
      getCustomerHEaders(String fromDate, String toDate, String status) async {
    try {
      final response = await http.post(
          Uri.parse(baseUrl + merchCustomerRequestUrl),
          body: {"FromDate": fromDate, "ToDate": toDate, "Status": status});

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> data = json['result'];
        List<MerchCustomerRequestHeaderModel> datalist = data
            .map<MerchCustomerRequestHeaderModel>(
                (json) => MerchCustomerRequestHeaderModel.fromJson(json))
            .toList();
        return right(datalist);
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
