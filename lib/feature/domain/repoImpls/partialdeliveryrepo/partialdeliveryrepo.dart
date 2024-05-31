import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_detail/partial_delivery_detail.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_header_model/partial_delivery_header_model.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_reason_model/partial_delivery_reason_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IPartialDeliveryRepo)
class PartialDeliveryRepo implements IPartialDeliveryRepo {
  @override
  Future<Either<MainFailures, List<PartialDeliveryHeaderModel>>>
      partialDeliveryList(String userID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + partialDeliverHeaderUrl),
          body: {"UserID": userID});
      // log(response.body);
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> headerdata = json['result'];
        List<PartialDeliveryHeaderModel> headers = headerdata
            .map<PartialDeliveryHeaderModel>(
                (json) => PartialDeliveryHeaderModel.fromJson(json))
            .toList();
        return right(headers);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log("partial delivery error resp $e");
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<PartialDeliveryReasonModel>>>
      getPartialDeliveryReasons(String rsnType) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + partialDeliverHeaderUrl),
          body: {"rsn_Type": rsnType});
      // log(response.body);
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> reasondata = json['result'];
        List<PartialDeliveryReasonModel> resons = reasondata
            .map<PartialDeliveryReasonModel>(
                (json) => PartialDeliveryReasonModel.fromJson(json))
            .toList();
        return right(resons);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log("partial delivery error resp $e");
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<PartialDeliveryDetail>>> priceChangeDetails(
      String reqID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + partialDeliverHeaderUrl),
          body: {"ReqID": reqID});
      // log(response.body);
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> detaildata = json['result'];
        List<PartialDeliveryDetail> details = detaildata
            .map<PartialDeliveryDetail>(
                (json) => PartialDeliveryDetail.fromJson(json))
            .toList();
        return right(details);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log("partial delivery error resp $e");
      return left(const MainFailures.serverfailure());
    }
  }
}
