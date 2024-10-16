import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/must_sell_approve_in_model/must_sell_approve_in_model.dart';
import 'package:customer_connect/feature/data/models/must_sell_approve_resp_model/must_sell_approve_resp_model.dart';
import 'package:customer_connect/feature/data/models/must_sell_detail_model/must_sell_detail_model.dart';
import 'package:customer_connect/feature/data/models/must_sell_header_model/must_sell_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IMustSellRepo)
class MustSellRepo implements IMustSellRepo {
  @override
  Future<Either<MainFailures, List<MustSellHeaderModel>>> getMustSellHeaders(
      String mode) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + mustSellHeaderurl),
          body: {"Status_Value": mode});
      log("Mustsell ${response.body}");
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> headerdata = json['result'];
        List<MustSellHeaderModel> headers = headerdata
            .map<MustSellHeaderModel>(
                (json) => MustSellHeaderModel.fromJson(json))
            .toList();
        return right(headers);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log("Must sell header error resp $e");
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<MustSellDetailModel>>> getMustSellDetail(
      String reqId) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + mustsellDetailUrl),
          body: {"HeaderID": reqId});

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> detaildatas = json['result'];
        List<MustSellDetailModel> reqdetail = detaildatas
            .map<MustSellDetailModel>(
                (json) => MustSellDetailModel.fromJson(json))
            .toList();
        return right(reqdetail);
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
  Future<Either<MainFailures, MustSellApproveRespModel>> mustSellApprove(
      MustSellApproveInModel approve) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + mustSellApproveUrl), body: {
        "JSONString": jsonEncode(approve.jsonString),
        "UserId": approve.userId,
        "TransID": approve.transId,
      });

      if (response.statusCode == 200) {
        log('Approve Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final approve = MustSellApproveRespModel.fromJson(json["result"][0]);

        return right(approve);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log("mustsell approve error resp $e");
      return left(const MainFailures.serverfailure());
    }
  }
}
