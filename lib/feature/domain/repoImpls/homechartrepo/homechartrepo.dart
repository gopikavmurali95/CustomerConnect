import 'dart:convert';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/chart_actual_visit_model/chart_actual_visit_model.dart';
import 'package:customer_connect/feature/data/models/chart_non_productive_model/chart_non_productive_model.dart';
import 'package:customer_connect/feature/data/models/chart_planned_visits_model/chart_planned_visits_model.dart';
import 'package:customer_connect/feature/data/models/chart_productive_visit_model/chart_productive_visit_model.dart';
import 'package:customer_connect/feature/data/models/chart_routes_model/chart_routes_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IHomeChartsRepo)
class HomeChartRepo implements IHomeChartsRepo {
  @override
  Future<Either<MainFailures, ChartRoutesModel>> routesChart(
      String fromDate, String toDate) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + chartRoutesUrl),
          body: {"FromDate": fromDate, "ToDate": toDate});
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final data = ChartRoutesModel.fromJson(json["result"][0]);
        return right(data);
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
  Future<Either<MainFailures, ChartActualVisitModel>> actualVisitsChart(
      String fromDate, String toDate) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + chartActualVisitsUrl),
          body: {"FromDate": fromDate, "ToDate": toDate});
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final data = ChartActualVisitModel.fromJson(json["result"][0]);
        return right(data);
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
  Future<Either<MainFailures, ChartNonProductiveModel>> nonProductiveChart(
      String fromDate, String toDate) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + chartNonProductiveVistisUrl),
          body: {"FromDate": fromDate, "ToDate": toDate});
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final data = ChartNonProductiveModel.fromJson(json["result"][0]);
        return right(data);
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
  Future<Either<MainFailures, ChartPlannedVisitsModel>> plannedVisitsChart(
      String fromDate, String toDate) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + chartPlannedVisitsUrl),
          body: {"FromDate": fromDate, "ToDate": toDate});
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final data = ChartPlannedVisitsModel.fromJson(json["result"][0]);
        return right(data);
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
  Future<Either<MainFailures, ChartProductiveVisitModel>> productiveChart(
      String fromDate, String toDate) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + chartProductiveVisitsUrl),
          body: {"FromDate": fromDate, "ToDate": toDate});
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final data = ChartProductiveVisitModel.fromJson(json["result"][0]);
        return right(data);
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
