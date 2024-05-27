import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/approval_count_model/approval_count_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IApprovalCountsRepo)
class ApprovalsCountRepo implements IApprovalCountsRepo {
  @override
  Future<Either<MainFailures, ApprovalCountModel>> approvalsCount(
      String userID) async {
    try {
      final response =
          await http.post(Uri.parse(approvalBaseUrl + approvalCountUrl));
      if (response.statusCode == 200) {
        log('Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final approvalcounts = ApprovalCountModel.fromJson(json["result"][0]);
        return right(approvalcounts);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Wrong count'),
        );
      }
    } catch (e) {
      // logger.e('Picking and loadin count error : $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
