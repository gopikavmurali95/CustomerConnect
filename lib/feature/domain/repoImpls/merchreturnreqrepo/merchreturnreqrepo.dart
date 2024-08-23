import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/merch_return_request_model/merch_return_request_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IMerchReturnReqRepo)
class MerchReturnRequestRepo implements IMerchReturnReqRepo {
  @override
  Future<Either<MainFailures, List<MerchReturnRequestModel>>> getReturnItems(
      String fromDate, String toDate, String status) async {
    try {
      final response = await http.post(Uri.parse(baseUrl + merchReturnReqUrl),
          body: {"FromDate": fromDate, "ToDate": toDate, "Status": status});
   //   log("FromDate: $fromDate, ToDate: $toDate, Status: $status");
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> creditnotedata = json['result'];
        List<MerchReturnRequestModel> data = creditnotedata
            .map<MerchReturnRequestModel>(
                (json) => MerchReturnRequestModel.fromJson(json))
            .toList();
        return right(data);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log(e.toString());
      return left(const MainFailures.serverfailure());
    }
  }
}
