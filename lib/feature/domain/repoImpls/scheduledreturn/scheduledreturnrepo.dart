import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/route_model/route_model.dart';
import 'package:customer_connect/feature/data/models/schedule_return_approval_reason_model/schedule_return_approval_reason_model.dart';
import 'package:customer_connect/feature/data/models/scheduled_return_approval_in_model/scheduled_return_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/scheduled_return_approval_out_model/scheduled_return_approval_out_model.dart';
import 'package:customer_connect/feature/data/models/sheduled_return_detail_model/sheduled_return_detail_model.dart';
import 'package:customer_connect/feature/data/models/sheduled_return_header_model/sheduled_return_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IScheduledReturnApprovalRepo)
class ScheduledReturnApprovalRepo implements IScheduledReturnApprovalRepo {
  @override
  Future<Either<MainFailures, List<SheduledReturnHeaderModel>>>
      getScheduledReturnApprovalHeaders(String userID, String mode) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + sheduledReturnHeaderUrl),
          body: {"UserID": userID, "Status_Value": mode});
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> headerdata = json['result'];
        List<SheduledReturnHeaderModel> headers = headerdata
            .map<SheduledReturnHeaderModel>(
                (json) => SheduledReturnHeaderModel.fromJson(json))
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
  Future<Either<MainFailures, List<SheduledReturnDetailModel>>>
      getScheduledReturnApprovalDetails(String reqID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + sheduledrRetunrDetailUrl),
          body: {"ReqID": reqID});
      log("ReqID: $reqID");

      if (response.statusCode == 200) {
        log("sr details ${response.body}");
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> detaildata = json['result'];
        List<SheduledReturnDetailModel> details = detaildata
            .map<SheduledReturnDetailModel>(
                (json) => SheduledReturnDetailModel.fromJson(json))
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
  Future<Either<MainFailures, List<RouteModel>>> getAllRoutes() async {
    try {
      final response = await http.post(
        Uri.parse(approvalBaseUrl + getRoutesForScUrl),
      );

      if (response.statusCode == 200) {
        //log(" sr reason: ${response.body}");
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> routedata = json['result'];
        List<RouteModel> routes = routedata
            .map<RouteModel>((json) => RouteModel.fromJson(json))
            .toList();
        return right(routes);
      } else {
        log(response.body);
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('routes error $e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, ScheduledReturnApprovalOutModel>>
      scheduledReturnApproval(ScheduledReturnApprovalInModel approve) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + approveScReturnUrl), body: {
        "JSONString": jsonEncode(
          approve.products,
        ),
        "UserId": approve.userId,
        "ReturnID": approve.returnId,
        "RouteId": approve.routeId
      });
      log("UserId: ${approve.userId}, ReturnID:${approve.returnId} RouteId:${approve.returnId}");
      if (response.statusCode == 200) {
        log('sr Approve Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final approve =
            ScheduledReturnApprovalOutModel.fromJson(json["result"][0]);
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
  Future<Either<MainFailures, List<ScheduleReturnApprovalReasonModel>>>
      getScheduleReturnReasons(String rsnType) async {
    try {
      final response = await http.post(
        Uri.parse(approvalBaseUrl + scheduleReturnApprovalReasonUrl),
      );
      if (response.statusCode == 200) {
        log('sr reasonse response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> scheeduleReturnReason = json['result'];
        List<ScheduleReturnApprovalReasonModel> scheduleReason =
            scheeduleReturnReason
                .map<ScheduleReturnApprovalReasonModel>(
                    (json) => ScheduleReturnApprovalReasonModel.fromJson(json))
                .toList();
        return right(scheduleReason);
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
