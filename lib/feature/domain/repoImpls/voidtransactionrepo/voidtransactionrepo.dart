import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/void_transacrtion_approval_in_model/void_transacrtion_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/void_transaction_approve_and_reject_model/void_transaction_approve_and_reject_model.dart';
import 'package:customer_connect/feature/data/models/void_transaction_header_model/void_transaction_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IVoidTransactionRepo)
class VoidTransactionHeaderRepo implements IVoidTransactionRepo {
  @override
  Future<Either<MainFailures, List<VoidTransactionHeaderModel>>>
      getVoidTransactionHeader(String statusValue) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + voidTransactionApprovalHeaderUrl),
          body: {"Status_Value": statusValue});

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> headerdata = json['result'];
        List<VoidTransactionHeaderModel> headers = headerdata
            .map<VoidTransactionHeaderModel>(
                (json) => VoidTransactionHeaderModel.fromJson(json))
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
  Future<Either<MainFailures, VoidTransactionApproveAndRejectModel>>
      voidTransactionApprove(VoidTransacrtionApprovalInModel approve) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + voidTransactionApprovalUrl), body: {
        "JSONString": jsonEncode(approve.jsonString),
      });
      log({
        "JSONString": jsonEncode(approve.jsonString),
      }.toString());

      if (response.statusCode == 200) {
        log('Approve Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final approve =
            VoidTransactionApproveAndRejectModel.fromJson(json["result"][0]);

        return right(approve);
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
  Future<Either<MainFailures, VoidTransactionApproveAndRejectModel>>
      voidTransactionReject(VoidTransacrtionApprovalInModel reject) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + voidTransactionRejectUrl), body: {
        "JSONString": jsonEncode(reject.jsonString),
      });

      if (response.statusCode == 200) {
        log('Reject Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final reject =
            VoidTransactionApproveAndRejectModel.fromJson(json["result"][0]);

        return right(reject);
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
