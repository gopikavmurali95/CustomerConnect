import 'dart:convert';
// import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/get_cus_actcount_model/get_cus_actcount_model.dart';
import 'package:customer_connect/feature/data/models/get_display_count_model/get_display_count_model.dart';
import 'package:customer_connect/feature/data/models/get_out_of_stock_count_model/get_out_of_stock_count_model.dart';
import 'package:customer_connect/feature/data/models/get_survey_count_model/get_survey_count_model.dart';
import 'package:customer_connect/feature/data/models/get_task_count_model/get_task_count_model.dart';
import 'package:customer_connect/feature/data/models/merch_cu_service_count_model/merch_cu_service_count_model.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IMerchandisingDashBoardRepo)
class MerchandisingScreenRepo implements IMerchandisingDashBoardRepo {
  @override
  Future<Either<MainFailures, GetOutOfStockCountModel>> getoutofstockcount(
      String fromDate, String toDate) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + merchandisingGetOutofStockCountUrl),
          body: {"FromDate": fromDate, "ToDate": toDate});
      // log('outofstockcount: ${response.body}');
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final stockcount = GetOutOfStockCountModel.fromJson(json["result"][0]);
        return right(stockcount);
      } else {
        return left(
          const MainFailures.networkerror(error: "Something went wrong"),
        );
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, GetTaskCountModel>> gettaskcount(
      String fromDate, String toDate) async {
    try {
      final response = await http.post(Uri.parse(baseUrl + getTaskCountUrl),
          body: {"FromDate": fromDate, "ToDate": toDate});

      if (response.statusCode == 200) {
        //log('taskcount: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final taskcount = GetTaskCountModel.fromJson(json["result"][0]);
        return right(taskcount);
      } else {
        return left(
          const MainFailures.networkerror(error: "Something went wrong"),
        );
      }
    } catch (e) {
      // log(jsonEncode(e));
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, GetSurveyCountModel>> getsurveycount(
      String fromDate, String toDate) async {
    try {
      final response = await http.post(Uri.parse(baseUrl + getSurveyCountUrl),
          body: {"FromDate": fromDate, "ToDate": toDate});

      if (response.statusCode == 200) {
        //  log('surveycount: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final surveycount = GetSurveyCountModel.fromJson(json["result"][0]);
        return right(surveycount);
      } else {
        return left(
          const MainFailures.networkerror(error: "Something went wrong"),
        );
      }
    } catch (e) {
      // log(jsonEncode(e));
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, GetDisplayCountModel>> getdisplaycount(
      String fromDate, String toDate) async {
    try {
      final response = await http.post(Uri.parse(baseUrl + getDisplayCountUrl),
          body: {"FromDate": fromDate, "ToDate": toDate});

      if (response.statusCode == 200) {
        // log('displaycount: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final displaycount = GetDisplayCountModel.fromJson(json["result"][0]);
        return right(displaycount);
      } else {
        return left(
          const MainFailures.networkerror(error: "Something went wrong"),
        );
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, GetCusActcountModel>> getCusActCount(
      String fromDate, String toDate) async {
    try {
      final response = await http.post(Uri.parse(baseUrl + getCusActCountUrl),
          body: {"FromDate": fromDate, "ToDate": toDate});

      if (response.statusCode == 200) {
        // log('cutactcount: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final cusactcount = GetCusActcountModel.fromJson(json["result"][0]);
        return right(cusactcount);
      } else {
        return left(
          const MainFailures.networkerror(error: "Something went wrong"),
        );
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, MerchCuServiceCountModel>> getCusServiceCount(
      String fromDate, String toDate) async {
    try {
      final response = await http.post(
          Uri.parse(baseUrl + merchCusServiceCountUrl),
          body: {"FromDate": fromDate, "ToDate": toDate});

      if (response.statusCode == 200) {
        // log('cusServicecount: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final cusServicecount =
            MerchCuServiceCountModel.fromJson(json["result"][0]);
        return right(cusServicecount);
      } else {
        return left(
          const MainFailures.networkerror(error: "Something went wrong"),
        );
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }
}
