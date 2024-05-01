import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/sheduled_return_detail_model/sheduled_return_detail_model.dart';
import 'package:customer_connect/feature/data/models/sheduled_return_header_model/sheduled_return_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IScheduledReturnApprovalRepo)
class ScheduledReturnApprovalRepo implements IScheduledReturnApprovalRepo {
  @override
  Future<Either<MainFailures, List<SheduledReturnHeaderModel>>>
      getScheduledReturnApprovalHeaders(String userID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + sheduledReturnHeaderUrl),
          body: {"UserID": userID});
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

      if (response.statusCode == 200) {
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
}
