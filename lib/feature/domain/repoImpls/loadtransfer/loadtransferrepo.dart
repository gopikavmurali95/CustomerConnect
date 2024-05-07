import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/load_transfer_approval_header_model/load_transfer_approval_header_model.dart';
import 'package:customer_connect/feature/data/models/load_transfer_approval_in_model/load_transfer_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/load_transfer_approval_out_model/load_transfer_approval_out_model.dart';
import 'package:customer_connect/feature/data/models/load_transfer_detail_model/load_transfer_detail_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: ILoadTransferApprovalRepo)
class LoadTransferApprovalRepo implements ILoadTransferApprovalRepo {
  @override
  Future<Either<MainFailures, List<LoadTransferApprovalHeaderModel>>>
      getLoadTransferHeaders(String userID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + loadTransferHeaderUrl),
          body: {"UserID": userID});
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> headerdata = json['result'];
        List<LoadTransferApprovalHeaderModel> headers = headerdata
            .map<LoadTransferApprovalHeaderModel>(
                (json) => LoadTransferApprovalHeaderModel.fromJson(json))
            .toList();
        return right(headers);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log("Load transfer header error resp $e");
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<LoadTransferDetailModel>>>
      getLoadTransferDetails(String reqID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + loadTransferDetailUrl),
          body: {"ReqID": reqID});

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> detaildata = json['result'];
        List<LoadTransferDetailModel> details = detaildata
            .map<LoadTransferDetailModel>(
                (json) => LoadTransferDetailModel.fromJson(json))
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
  Future<Either<MainFailures, LoadTransferApprovalOutModel>>
      loadTransferApproval(LoadTransferApprovalInModel approve) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + loadTransferApprovalUrl), body: {
        "JSONString": jsonEncode([
          {
            "ldr_ID": approve.ldrId,
            "Status": approve.status,
          }
        ]),
        "UserId": approve.userId,
        "ReqID": approve.reqId,
      });

      if (response.statusCode == 200) {
        log('Approve Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final approve =
            LoadTransferApprovalOutModel.fromJson(json["result"][0]);
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
