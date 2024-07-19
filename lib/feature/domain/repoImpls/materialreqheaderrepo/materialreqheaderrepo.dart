import 'dart:convert';
import 'dart:developer';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/material_req_approval_in_model/MaterialReqApprvalInModel.dart';
import 'package:customer_connect/feature/data/models/material_req_approval_out_model/MaterialReqApprovalOutModel.dart';
import 'package:customer_connect/feature/data/models/material_req_detail_model/MaterialReqDetailModel.dart';
import 'package:customer_connect/feature/data/models/material_req_header_model/MaterialReqHeaderModel.dart';
import 'package:customer_connect/feature/data/models/material_req_rejection_in_model/MaterialReqRejectionInModel.dart';
import 'package:customer_connect/feature/data/models/material_req_rejection_out_model/MaterialReqrejectionOutModel.dart';
import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import '../../../../constants/fonts.dart';
import '../../../../core/api/endpoints.dart';

@LazySingleton(as: IMaterialReqHeaderRepo)
class MaterialReqRepo implements IMaterialReqHeaderRepo {
  @override
  Future<Either<MainFailures, List<MaterialReqHeaderModel>>>
      materialreqheaderList(String userId, String mode) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + materialReqHeaderUrl),
          body: {"userID": userId, "Status_Value": mode});
      if (response.statusCode == 200) {
        logger.w('response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> materialReqhead = json['result'];
        List<MaterialReqHeaderModel> materialreqlist = materialReqhead
            .map<MaterialReqHeaderModel>(
                (json) => MaterialReqHeaderModel.fromJson(json))
            .toList();
        return right(materialreqlist);
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
  Future<Either<MainFailures, List<MaterialReqDetailModel>>>
      materialreqdetailList(String reqId) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + materialReqDetailUrl),
          body: {"reqID": reqId});
      if (response.statusCode == 200) {
        // logger.w('response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> materialReqdetail = json['result'];
        List<MaterialReqDetailModel> materialreqdetaillist = materialReqdetail
            .map<MaterialReqDetailModel>(
                (json) => MaterialReqDetailModel.fromJson(json))
            .toList();
        return right(materialreqdetaillist);
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
  Future<Either<MainFailures, MaterialReqApprovalOutModel>> materialApproval(
      MaterialReqApprovalInModel approval) async {
    try {
      log({
        "JSONString": jsonEncode(approval.products),
        "UserId": approval.userId,
        "ReqID": approval.reqID,
        "Mode": approval.mode,
        "Warehouse": approval.warehouse
      }.toString());
      final response = await http
          .post(Uri.parse(approvalBaseUrl + materialReqApprovalUrl), body: {
        "JSONString": jsonEncode(approval.products),
        "UserId": approval.userId,
        "ReqID": approval.reqID,
        "Mode": approval.mode,
        "Warehouse": approval.warehouse
      });

      log(response.body);
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final status = MaterialReqApprovalOutModel.fromJson(json["result"][0]);
        return right(status);
      } else {
        log(response.body);
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('Approve error $e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, MaterialReqrejectionOutModel>> materialRejection(
      MaterialReqRejectionInModel approval) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + materialReqRejectionUrl), body: {
        "JSONString": jsonEncode(approval.products),
        "UserId": approval.userId,
        "ReqID": approval.reqID,
        "Remark": approval.remark,
      });
      log({
        "JSONString": jsonEncode(approval.products),
        "UserId": approval.userId,
        "ReqID": approval.reqID,
        "Remark": approval.remark,
      }.toString());
      if (response.statusCode == 200) {
        log(response.body);
        Map<String, dynamic> json = jsonDecode(response.body);
        final status = MaterialReqrejectionOutModel.fromJson(json["result"][0]);
        return right(status);
      } else {
        log(response.body);
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('Approve error $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
