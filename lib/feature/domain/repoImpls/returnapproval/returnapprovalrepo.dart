import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/approval_reson_model/approval_reson_model.dart';
import 'package:customer_connect/feature/data/models/return_approval_detail_model/return_approval_detail_model.dart';
import 'package:customer_connect/feature/data/models/return_approval_header_model/return_approval_header_model.dart';
import 'package:customer_connect/feature/data/models/return_approve_in_model/return_approve_in_model.dart';
import 'package:customer_connect/feature/data/models/return_approve_out_model/return_approve_out_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IReturnApprovalRepo)
class ReturnApprovalRepo implements IReturnApprovalRepo {
  @override
  Future<Either<MainFailures, List<ReturnApprovalDetailModel>>>
      getReturnApprovalDetails(String reqID, String mode) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + returnApprovalsDetailUrl),
          body: {"Req_ID": reqID, "Mode": mode});

      if (response.statusCode == 200) {
        log(response.body);
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> returnheaderdata = json['result'];
        List<ReturnApprovalDetailModel> returns = returnheaderdata
            .map<ReturnApprovalDetailModel>(
                (json) => ReturnApprovalDetailModel.fromJson(json))
            .toList();
        return right(returns);
      } else {
        log(response.body);
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('detail error $e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<ReturnApprovalHeaderModel>>>
      getReturnApprovalHeaders(String rotID, String mode) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + returnApprovalsHeaderUrl),
          body: {"UserID": rotID, "Status_Value": mode});
          
      if (response.statusCode == 200) {
        // log(response.body);
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> returnheaderdata = json['result'];
        List<ReturnApprovalHeaderModel> returns = returnheaderdata
            .map<ReturnApprovalHeaderModel>(
                (json) => ReturnApprovalHeaderModel.fromJson(json))
            .toList();
        return right(returns);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log("return error resp $e");
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<ApprovalResonModel>>>
      getReturnApprovalResons(String rsnType) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + approvalReasonUrl),
          body: {"rsn_Type": rsnType});
      if (response.statusCode == 200) {
        // log(response.body);
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> returnheaderdata = json['result'];
        List<ApprovalResonModel> reasons = returnheaderdata
            .map<ApprovalResonModel>(
                (json) => ApprovalResonModel.fromJson(json))
            .toList();
        return right(reasons);
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

  @override
  Future<Either<MainFailures, ReturnApproveOutModel>> approveReturnProduct(
      ReturnApproveInModel approveIn) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + approveReturnProductUrl), body: {
        "ReturnID": approveIn.returnID,
        "UserId": approveIn.userID,
        "JSONString": jsonEncode(approveIn.products)
      });

      if (response.statusCode == 200) {
        // log('Approve Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final approve = ReturnApproveOutModel.fromJson(json["result"][0]);
        return right(approve);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('Approve error : $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
