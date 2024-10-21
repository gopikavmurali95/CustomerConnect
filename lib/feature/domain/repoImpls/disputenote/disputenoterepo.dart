import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/dispute_approval_resp_model/dispute_approval_resp_model.dart';
import 'package:customer_connect/feature/data/models/dispute_approval_status_model/dispute_approval_status_model.dart';
import 'package:customer_connect/feature/data/models/dispute_invoice_approve_in_model/dispute_invoice_approve_in_model.dart';
import 'package:customer_connect/feature/data/models/dispute_note_detail_model/dispute_note_detail_model.dart';
import 'package:customer_connect/feature/data/models/dispute_note_header_model/dispute_note_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IDisputeNoteApprovalRepo)
class DisputeNoteApprovalRepo implements IDisputeNoteApprovalRepo {
  @override
  Future<Either<MainFailures, List<DisputeNoteHeaderModel>>>
      getDisputeNoteApprovalHeaders(String userID, String mode) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + disputeNoteApprovalHeaderUrl),
          body: {"UserID": userID, "Status_Value": mode});
      if (response.statusCode == 200) {
        log("disputenote req header:${response.body}");
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> headerdata = json['result'];
        List<DisputeNoteHeaderModel> headers = headerdata
            .map<DisputeNoteHeaderModel>(
                (json) => DisputeNoteHeaderModel.fromJson(json))
            .toList();
        return right(headers);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log("dispute error resp $e");
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<DisputeNoteDetailModel>>>
      getDisputeApprovalDetails(String reqID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + disputeNoteDetailUrl),
          body: {"ReqID": reqID});

      if (response.statusCode == 200) {
        // log("disputenote req detail r:${response.body}");
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> detaildata = json['result'];
        List<DisputeNoteDetailModel> details = detaildata
            .map<DisputeNoteDetailModel>(
                (json) => DisputeNoteDetailModel.fromJson(json))
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
  Future<Either<MainFailures, DisputeApprovalRespModel>> disputeApproval(
      DisputeInvoiceApproveInModel approve) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + disputeApprovalUrl),
          body: approve.toJson());

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final status = DisputeApprovalRespModel.fromJson(json["result"][0]);
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
  Future<Either<MainFailures, DisputeApprovalRespModel>> disputeReject(
      DisputeInvoiceApproveInModel reject) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + disputeRejectUrl), body: {
        "ReqID": reject.reqId,
        "Remark": reject.remark,
        "UserId": reject.userId
      });

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final status = DisputeApprovalRespModel.fromJson(json["result"][0]);
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
  Future<Either<MainFailures, DisputeApprovalStatusModel>>
      getDisputeApprovalStatus(String userID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + disputeApprovalStatusUrl),
          body: {"UserId": userID});

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final status = DisputeApprovalStatusModel.fromJson(json["result"][0]);
        return right(status);
      } else {
        log(response.body);
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('Status error $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
