import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/return_approval_detail_model/return_approval_detail_model.dart';
import 'package:customer_connect/feature/data/models/return_approval_header_model/return_approval_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IReturnApprovalRepo)
class ReturnApprovalRepo implements IReturnApprovalRepo {
  @override
  Future<Either<MainFailures, ReturnApprovalDetailModel>>
      getReturnApprovalDetails(String reqID, String mode) async {
    try {
      final response = await http.post(
          Uri.parse(baseUrl + returnApprovalsDetailUrl),
          body: {"Req_ID": reqID, "Mode": mode});
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        ReturnApprovalDetailModel details =
            ReturnApprovalDetailModel.fromJson(json["result"][0]);
        return right(details);
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
  Future<Either<MainFailures, List<ReturnApprovalHeaderModel>>>
      getReturnApprovalHeaders(String rotID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + returnApprovalsHeaderUrl),
          body: {"rotID": rotID});
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> returnheaderdata = json['result'];
        List<ReturnApprovalHeaderModel> returns = returnheaderdata
            .map<ReturnApprovalHeaderModel>(
                (json) => ReturnApprovalHeaderModel.fromJson(json))
            .toList();
        return right(returns);
      } else {
        log(response.body);
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log("return error resp $e");
      return left(const MainFailures.serverfailure());
    }
  }
}
