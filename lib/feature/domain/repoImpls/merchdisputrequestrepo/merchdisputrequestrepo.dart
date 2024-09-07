import 'dart:convert';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/merch_dispute_request_model/merch_dispute_request_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IMerchDisputeReqRepo)
class MerchDisputeRequestRepo implements IMerchDisputeReqRepo {
  @override
  Future<Either<MainFailures, List<MerchDisputeRequestModel>>> getDisputeItems(
      String fromDate, String toDate, String status) async {
    try {
      final response = await http.post(
          Uri.parse(baseUrl + merchDisputeRequestUrl),
          body: {"FromDate": fromDate, "ToDate": toDate, "Status": status});
      //log("FromDate: $fromDate, ToDate: $toDate, Status: $status");
      if (response.statusCode == 200) {
        // log("dispute response: ${response.body}");
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> disputedata = json['result'];
        List<MerchDisputeRequestModel> data = disputedata
            .map<MerchDisputeRequestModel>(
                (json) => MerchDisputeRequestModel.fromJson(json))
            .toList();
        return right(data);
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
