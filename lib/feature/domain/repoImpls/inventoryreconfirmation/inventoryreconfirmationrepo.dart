import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/inventory_reconfirm_approval_resp_model/inventory_reconfirm_approval_resp_model.dart';
import 'package:customer_connect/feature/data/models/inventory_reconfirm_approve_in_model/inventory_reconfirm_approve_in_model.dart';
import 'package:customer_connect/feature/data/models/inventory_reconfirm_detail_model/inventory_reconfirm_detail_model.dart';
import 'package:customer_connect/feature/data/models/inventory_reconfirm_header_model/inventory_reconfirm_header_model.dart';
import 'package:customer_connect/feature/data/models/inventory_reconfirm_reason_model/inventory_reconfirm_reason_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:http/http.dart' as http;

@LazySingleton(as: IinvetoryReconfirmationApprovalRepo)
class InventoryReconfirmationRepo
    implements IinvetoryReconfirmationApprovalRepo {
  @override
  Future<Either<MainFailures, List<InventoryReconfirmHeaderModel>>>
      getInventoryReconfirmHeaders(String mode) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + inventoryReconfirmHeaderUrl),
          body: {"Status_Value": mode});
      if (response.statusCode == 200) {
        // log('response:${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> headerdata = json['result'];
        List<InventoryReconfirmHeaderModel> headers = headerdata
            .map<InventoryReconfirmHeaderModel>(
                (json) => InventoryReconfirmHeaderModel.fromJson(json))
            .toList();
        return right(headers);
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
  Future<Either<MainFailures, List<InventoryReconfirmDetailModel>>>
      getinventoryReconfirmDetail(String reqId) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + inventoryReconfirmDetailUrl),
          body: {"ReqID": reqId});
      if (response.statusCode == 200) {
        log("ReqID: $reqId");
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> detaildata = json['result'];
        List<InventoryReconfirmDetailModel> details = detaildata
            .map<InventoryReconfirmDetailModel>(
                (json) => InventoryReconfirmDetailModel.fromJson(json))
            .toList();
        return right(details);
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
  Future<Either<MainFailures, List<InventoryReconfirmReasonModel>>>
      getinventoryReconfirmReasons() async {
    try {
      final response = await http.post(
        Uri.parse(approvalBaseUrl + inventoryReconfirmResonurl),
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> reasondata = json['result'];
        List<InventoryReconfirmReasonModel> reasons = reasondata
            .map<InventoryReconfirmReasonModel>(
                (json) => InventoryReconfirmReasonModel.fromJson(json))
            .toList();
        return right(reasons);
      } else {
        log(response.body);
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('resons error $e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, InventoryReconfirmApprovalRespModel>>
      inventoryReconfromApprove(
          InventoryReconfirmApproveInModel approve) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + inventoryReconfirmApprovalUrl),
          body: {
            "UserId": approve.userId,
            "ReqID": approve.reqId,
            "JSONString": jsonEncode(approve.products)
          });

          log(jsonEncode(approve));
      // log("UserId: ${approve.userId}, ReqID: ${approve.reqId}, JSONString: ${jsonEncode(approve.products)}");
      log('Approve Response: ${response.body}');
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final approve =
            InventoryReconfirmApprovalRespModel.fromJson(json["result"][0]);
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
