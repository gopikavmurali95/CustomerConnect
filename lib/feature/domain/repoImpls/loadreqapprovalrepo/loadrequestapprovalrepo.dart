import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/load_request_approval/LoadReqInApprovalModel.dart';
import 'package:customer_connect/feature/data/models/load_request_approval_out_model/LoadRequestApprovalOutModel.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: ILoadRequestApprovalRepo)
class LoadRequestApprovalRepo implements ILoadRequestApprovalRepo {
  @override
  Future<Either<MainFailures, LoadRequestApprovalOutModel>> loadApproval(
      LoadReqInApprovalModel approval) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + loadReqApprovalUrl), body: {
        "JSONString": jsonEncode(approval.products),
        "UserId": approval.userId,
        "ReqID": approval.reqID,
        "RotID": approval.rotID,
        "Status": approval.status
      });
      log({
        "JSONString": jsonEncode(approval.products),
        "UserId": approval.userId,
        "ReqID": approval.reqID,
        "RotID": approval.rotID,
        "Status": approval.status
      }.toString());
      if (response.statusCode == 200) {
        log('Approve Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final approve = LoadRequestApprovalOutModel.fromJson(json["result"][0]);
        // Map<String, dynamic> json = jsonDecode(response.body);
        // final List<dynamic> headerdata = json['result'];
        // List<LoadRequestApprovalOutModel> approvals = headerdata
        //     .map<LoadRequestApprovalOutModel>(
        //         (json) => LoadRequestApprovalOutModel.fromJson(json))
        //     .toList();
        return right(approve);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log("Asset Adding error resp $e");
      return left(const MainFailures.serverfailure());
    }
  }

  /*  @override
  Future<Either<MainFailures, LoadRequestApprovalOutModel>> loadReject(
      LoadReqInApprovalModel loadapprove) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + loadReqApprovalUrl), body: {
        "JSONString": jsonEncode(loadapprove.products),
        "UserId": loadapprove.userId,
        "ReqID": loadapprove.reqID,
        "RotID": loadapprove.rotID,
        "Status":loadapprove.status
      });
      log({
        "JSONString": jsonEncode(loadapprove.products),
        "UserId": loadapprove.userId,
        "ReqID": loadapprove.reqID,
        "RotID": loadapprove.rotID,
        "Status":loadapprove.status
      }.toString());
      if (response.statusCode == 200) {
        log('Approve Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final approve = LoadRequestApprovalOutModel.fromJson(json["result"][0]);
        // Map<String, dynamic> json = jsonDecode(response.body);
        // final List<dynamic> headerdata = json['result'];
        // List<LoadRequestApprovalOutModel> approvals = headerdata
        //     .map<LoadRequestApprovalOutModel>(
        //         (json) => LoadRequestApprovalOutModel.fromJson(json))
        //     .toList();
        return right(approve);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log("Asset Adding error resp $e");
      return left(const MainFailures.serverfailure());
    }
  }
 */
}
