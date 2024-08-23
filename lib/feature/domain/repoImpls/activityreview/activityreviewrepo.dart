import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/activity_review_detail_list_model/activity_review_detail_list_model.dart';
import 'package:customer_connect/feature/data/models/activity_review_header_model/activity_review_header_model.dart';
import 'package:customer_connect/feature/data/models/activity_review_sales_model/activity_review_sales_model.dart';
import 'package:customer_connect/feature/data/models/activity_target_model/activity_target_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IActivityReviewRepo)
class ActivityReviewRepo implements IActivityReviewRepo {
  @override
  Future<Either<MainFailures, List<ActivityReviewHeaderModel>>>
      getActvityReviewHeaders(String routeType) async {
    try {
      final response = await http.post(
          Uri.parse(baseUrl + activtyReviewHeaderUrl),
          body: {"rotType": routeType});
      if (response.statusCode == 200) {
         //log("activity review response:${response.body}");
        Map<String, dynamic> json = jsonDecode(response.body);

        final List<dynamic> headerdata = json['result'];
        List<ActivityReviewHeaderModel> headerlist = headerdata
            .map<ActivityReviewHeaderModel>(
                (json) => ActivityReviewHeaderModel.fromJson(json))
            .toList();
        return right(headerlist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('activity header error$e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, ActivityTargetModel>> getActvityTargets(
      String udpID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + activityTargetsUrl),
          body: {"udpID": udpID});
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final targets = ActivityTargetModel.fromJson(json["result"][0]);
        return right(targets);
      } else {
        return left(
          const MainFailures.networkerror(error: ''),
        );
      }
    } catch (e) {
      //log(' activity targets error : $e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, ActivityReviewSalesModel>> getActvitySalesData(
      String udpID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + activitytargetSalesurl),
          body: {"udpID": udpID});
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final sales = ActivityReviewSalesModel.fromJson(json["result"][0]);
        return right(sales);
      } else {
        return left(
          const MainFailures.networkerror(error: ''),
        );
      }
    } catch (e) {
      log(' activity sales error : $e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<ActivityReviewDetailListModel>>>
      getActvityReviewDetailList(String udpID) async {
    try {
      final response = await http.post(
          Uri.parse(baseUrl + activityReviewDetailListUrl),
          body: {"udpID": udpID});
      if (response.statusCode == 200) {
        // log(response.body);
        Map<String, dynamic> json = jsonDecode(response.body);

        final List<dynamic> detaildata = json['result'];
        List<ActivityReviewDetailListModel> detailList = detaildata
            .map<ActivityReviewDetailListModel>(
                (json) => ActivityReviewDetailListModel.fromJson(json))
            .toList();
        return right(detailList);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('activity detail error$e');
      return left(const MainFailures.serverfailure());
    }
  }
}
