import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/un_scheduled_approval_header_model/un_scheduled_approval_header_model.dart';
import 'package:customer_connect/feature/data/models/un_scheduled_approval_resp_model/un_scheduled_approval_resp_model.dart';
import 'package:customer_connect/feature/data/models/un_scheduled_visit_approve_in_model/un_scheduled_visit_approve_in_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IUnScheduledVisitApprovalRepo)
class UnScheduledVisitApprovalRepo implements IUnScheduledVisitApprovalRepo {
  @override
  Future<Either<MainFailures, List<UnScheduledApprovalHeaderModel>>>
      getUnScheduledApprovalHeaders(String mode) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + unScheduledVisitApproveHeaderUrl),
          body: {"Status_Value": mode});

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> headerdata = json['result'];
        List<UnScheduledApprovalHeaderModel> headers = headerdata
            .map<UnScheduledApprovalHeaderModel>(
                (json) => UnScheduledApprovalHeaderModel.fromJson(json))
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
  Future<Either<MainFailures, UnScheduledApprovalRespModel>>
      approveUnscheduledVisit(
          List<UnScheduledVisitApproveInModel> approve) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + unScheduledVisitApproveUrl), body: {
        "JSONString": jsonEncode(approve),
      });

      log({
        "JSONString": jsonEncode(approve),
      }.toString());

      if (response.statusCode == 200) {
        log(response.body);
        Map<String, dynamic> json = jsonDecode(response.body);
        final approve =
            UnScheduledApprovalRespModel.fromJson(json["result"][0]);

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
  Future<Either<MainFailures, UnScheduledApprovalRespModel>>
      rejectUnscheduledVisit(
          List<UnScheduledVisitApproveInModel> reject) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + unScheduledVisitRejectUrl), body: {
        "JSONString": jsonEncode(reject),
      });


 log({
        "JSONString": jsonEncode(reject),
      }.toString());

      if (response.statusCode == 200) {
        log(response.body);
        Map<String, dynamic> json = jsonDecode(response.body);
        final approve =
            UnScheduledApprovalRespModel.fromJson(json["result"][0]);

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
}
