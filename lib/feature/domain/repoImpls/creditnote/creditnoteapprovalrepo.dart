import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/credit_note_detail_model/credit_note_detail_model.dart';
import 'package:customer_connect/feature/data/models/credit_note_header_model/credit_note_header_model.dart';
import 'package:customer_connect/feature/data/models/dispute_approval_resp_model/dispute_approval_resp_model.dart';
import 'package:customer_connect/feature/data/models/dispute_approval_status_model/dispute_approval_status_model.dart';
import 'package:customer_connect/feature/data/models/dispute_invoice_approve_in_model/dispute_invoice_approve_in_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICreditNoteApprovalRepo)
class CreditNoteApprovalRepo implements ICreditNoteApprovalRepo {
  @override
  Future<Either<MainFailures, List<CreditNoteHeaderModel>>>
      getCreditNoteApprovalHeaders(String userID, String mode) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + creditNoteApprovalHeaderUrl),
          body: {"UserID": userID, "Status_Value": mode});

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> headerdata = json['result'];
        List<CreditNoteHeaderModel> headers = headerdata
            .map<CreditNoteHeaderModel>(
                (json) => CreditNoteHeaderModel.fromJson(json))
            .toList();
        return right(headers);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log("creditnote error resp $e");
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<CreditNoteDetailModel>>>
      getCreditApprovalDetails(String reqID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + creditnoteDetailUrl),
          body: {"ReqID": reqID});

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> detaildata = json['result'];
        List<CreditNoteDetailModel> details = detaildata
            .map<CreditNoteDetailModel>(
                (json) => CreditNoteDetailModel.fromJson(json))
            .toList();
        return right(details);
      } else {
        log(response.body);
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('credit note detail error $e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, DisputeApprovalRespModel>> creditNoteApproval(
      DisputeInvoiceApproveInModel approve) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + creditNoteAapprovalUrl),
          body: approve.toJson());

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final status = DisputeApprovalRespModel.fromJson(json["result"][0]);
        return right(status);
      } else {
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
  Future<Either<MainFailures, DisputeApprovalRespModel>> creditNoteReject(
      DisputeInvoiceApproveInModel reject) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + creditNoteRejectUrl), body: {
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
      getcreditNoteApprovalStatus(String userID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + creditNoteApprovalLevelStatusUrl),
          body: {"UserId": userID});
      log(jsonEncode(userID));
      if (response.statusCode == 200) {
        log(response.body);
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
