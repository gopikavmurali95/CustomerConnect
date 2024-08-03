import 'dart:convert';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/target_details_count_model/target_details_count_model.dart';
import 'package:customer_connect/feature/data/models/target_details_graph_amt_model/target_details_graph_amt_model.dart';
import 'package:customer_connect/feature/data/models/target_details_graph_qty_model/target_details_graph_qty_model.dart';
import 'package:customer_connect/feature/data/models/target_details_list_model/target_details_list_model.dart';
import 'package:customer_connect/feature/data/models/target_header_count_model/target_header_count_model.dart';
import 'package:customer_connect/feature/data/models/target_header_list_model/target_header_list_model.dart';
import 'package:customer_connect/feature/data/models/target_package_list_model/target_package_list_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: ITargetRepo)
class TargetHeaderCountRepo implements ITargetRepo {
  @override
  Future<Either<MainFailures, TargetHeaderCountModel>> targetHeaderCount(
      String fromDate) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + targetHeaderCountUrl),
          body: {"FromDate": fromDate});

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final headerCount = TargetHeaderCountModel.fromJson(json["result"][0]);

        return right(headerCount);
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
  Future<Either<MainFailures, List<TargetHeaderListModel>>>
      getTargetHeaderItems(String fromDate) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + targetHeaderListUrl),
          body: {"FromDate": fromDate});

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> headerdata = json['result'];
        List<TargetHeaderListModel> headers = headerdata
            .map<TargetHeaderListModel>(
                (json) => TargetHeaderListModel.fromJson(json))
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
  Future<Either<MainFailures, TargetDetailsCountModel>> targetDetailCount(
      String fromDate, String rotID) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + targetDetailsCountUrl), body: {
        "FromDate": fromDate,
        "rotID": rotID,
      });

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final detailsCount =
            TargetDetailsCountModel.fromJson(json["result"][0]);

        return right(detailsCount);
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
  Future<Either<MainFailures, List<TargetDetailsListModel>>>
      getTargetDetailItems(String fromDate, String rotID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + targetDetailsListUrl),
          body: {"FromDate": fromDate, "rotID": rotID});

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> detaildata = json['result'];
        List<TargetDetailsListModel> details = detaildata
            .map<TargetDetailsListModel>(
                (json) => TargetDetailsListModel.fromJson(json))
            .toList();
        return right(details);
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
  Future<Either<MainFailures, TargetDetailsGraphAmtModel>> targetDetailAmt(
      String fromDate, String rotID) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + targetDetailsGraphAmtUrl), body: {
        "FromDate": fromDate,
        "rotID": rotID,
      });

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final detailsAmt =
            TargetDetailsGraphAmtModel.fromJson(json["result"][0]);

        return right(detailsAmt);
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
  Future<Either<MainFailures, TargetDetailsGraphQtyModel>> targetDetailQty(
      String fromDate, String rotID) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + targetDetailsGraphQtyUrl), body: {
        "FromDate": fromDate,
        "rotID": rotID,
      });

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final detailsQty =
            TargetDetailsGraphQtyModel.fromJson(json["result"][0]);

        return right(detailsQty);
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
  Future<Either<MainFailures, List<TargetPackageListModel>>>
      getTargetPackageItems(String fromDate, String rotID, String pkgID) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + targetPachageListUrl), body: {
        "pkgID": pkgID,
        "FromDate": fromDate,
        "rotID": rotID,
      });

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> targetPackageData = json['result'];
        List<TargetPackageListModel> data = targetPackageData
            .map<TargetPackageListModel>(
                (json) => TargetPackageListModel.fromJson(json))
            .toList();
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
