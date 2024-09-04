import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/journey_plan_approval_in_model/journey_plan_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/journey_plan_header_model/journey_plan_header_model.dart';
import 'package:customer_connect/feature/data/models/joutney_plan_approval_out_model/joutney_plan_approval_out_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IJourneyPlanApprovalRepo)
class JourneyPlanApprovalRepo implements IJourneyPlanApprovalRepo {
  @override
  Future<Either<MainFailures, List<JourneyPlanHeaderModel>>>
      getJourneyPlanHeaders(String userID, String mode) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + journeyPlanApprovalHeaders),
          body: {"UserID": userID, "Status_Value": mode});
      if (response.statusCode == 200) {
        log(response.body);
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> headerdata = json['result'];
        List<JourneyPlanHeaderModel> headers = headerdata
            .map<JourneyPlanHeaderModel>(
                (json) => JourneyPlanHeaderModel.fromJson(json))
            .toList();
        return right(headers.reversed.toList());
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
  Future<Either<MainFailures, JoutneyPlanApprovalOutModel>> journeyPlanApproval(
      JourneyPlanApprovalInModel approve) async {
    try {
      log({
        "JSONString": jsonEncode([
          {
            "jps_ID": approve.jpsId,
          }
        ]),
        "UserId": approve.userId,
      }.toString());
      final response = await http.post(
          Uri.parse(approvalBaseUrl + journeyPlanApprovalApproval),
          body: {
            "JSONString": jsonEncode([
              {
                "jps_ID": approve.jpsId,
              }
            ]),
            "UserId": approve.userId,
          });
      if (response.statusCode == 200) {
        log('Approve Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final approve = JoutneyPlanApprovalOutModel.fromJson(json["result"][0]);
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

  @override
  Future<Either<MainFailures, JoutneyPlanApprovalOutModel>> journeyPlanReject(
      JourneyPlanApprovalInModel approve) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + journeyPlanRejectUrl), body: {
        "JSONString": jsonEncode([
          {
            "jps_ID": approve.jpsId,
          }
        ]),
        "UserId": approve.userId,
      });

      log({
        "JSONString": jsonEncode([
          {
            "jps_ID": approve.jpsId,
          }
        ]),
        "UserId": approve.userId,
      }.toString());
      if (response.statusCode == 200) {
        log('Approve Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final approve = JoutneyPlanApprovalOutModel.fromJson(json["result"][0]);
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
