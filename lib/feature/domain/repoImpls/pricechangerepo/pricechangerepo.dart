import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/approve_price_change_model/approve_price_change_model.dart';
import 'package:customer_connect/feature/data/models/approve_price_changein_model/approve_price_changein_model.dart';
import 'package:customer_connect/feature/data/models/price_change_details_model/price_change_details_model.dart';
import 'package:customer_connect/feature/data/models/price_change_header_model/price_change_header_model.dart';
import 'package:customer_connect/feature/data/models/price_change_reason_model/price_change_reason_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
// import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IPriceChangeRepo)
class PriceChangeRepo implements IPriceChangeRepo {
  @override
  Future<Either<MainFailures, List<PriceChangeHeaderModel>>> priceChangeList(
      String userId) async {
    // var logger = Logger();
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + pricechangeheaderurl),
          body: {"userID": userId});
      if (response.statusCode == 200) {
        // logger.w('response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> priceChange = json['result'];
        List<PriceChangeHeaderModel> priceList = priceChange
            .map<PriceChangeHeaderModel>(
                (json) => PriceChangeHeaderModel.fromJson(json))
            .toList();
        return right(priceList);
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
  Future<Either<MainFailures, List<PriceChangeDetailsModel>>>
      priceChangeDetails(String pchID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + priceChamgeDetailsUrl),
          body: {"pch_ID": pchID});
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> priceChangeDet = json['result'];
        List<PriceChangeDetailsModel> priceList = priceChangeDet
            .map<PriceChangeDetailsModel>(
                (json) => PriceChangeDetailsModel.fromJson(json))
            .toList();
        return right(priceList);
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
  Future<Either<MainFailures, List<PriceChangeReasonModel>>>
      getPricChangeReasons(String rsnType) async {
    // var logger = Logger();
    try {
      final response =
          await http.post(Uri.parse(approvalBaseUrl + priceChangeReasonUrl));
      if (response.statusCode == 200) {
        // logger.w('response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> priceChangeReason = json['result'];
        List<PriceChangeReasonModel> priceReason = priceChangeReason
            .map<PriceChangeReasonModel>(
                (json) => PriceChangeReasonModel.fromJson(json))
            .toList();
        return right(priceReason);
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
  Future<Either<MainFailures, ApprovePriceChangeModel>> approvePriceChange(
      ApprovePriceChangeinModel approveIn) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + approvePriceChangeUrl), body: {
        "PriceID": approveIn.priceId,
        "UserID": approveIn.userId,
        "JSONString": jsonEncode(approveIn.products)
      });
      log({
        "PriceID": approveIn.priceId,
        "UserID": approveIn.userId,
        "JSONString": jsonEncode(approveIn.products)
      }.toString());
      if (response.statusCode == 200) {
        log('Approve Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final approve = ApprovePriceChangeModel.fromJson(json["result"][0]);
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
