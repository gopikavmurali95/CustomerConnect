import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_approval_model/partial_delivery_approval_model.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_approval_outparas_model/partial_delivery_approval_outparas_model.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_details_model/partial_delivery_details_model.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_header_model/partial_delivery_header_model.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_reason_model/partial_delivery_reason_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IPartialDeliveryRepo)
class PartialDeliveryRepo implements IPartialDeliveryRepo {
  @override
  Future<Either<MainFailures, List<PartialDeliveryHeaderModel>>>
      partialDeliveryList(String userID, String mode) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + partialDeliverHeaderUrl),
          body: {"UserID": userID, "Status_Value": mode});
      // log(response.body);
      if (response.statusCode == 200) {
        log(response.body);
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
  Future<Either<MainFailures, List<PartialDeliveryDetailsModel>>>
      partialDeliveryDetails(String reqID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + partialDeliveryDetailsUrl),
          body: {"ReqID": reqID});
      if (response.statusCode == 200) {
        log(response.body);
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> partialDeliveryDet = json['result'];
        List<PartialDeliveryDetailsModel> deliveryList = partialDeliveryDet
            .map<PartialDeliveryDetailsModel>(
                (json) => PartialDeliveryDetailsModel.fromJson(json))
            .toList();
        return right(deliveryList);
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
  Future<Either<MainFailures, List<PartialDeliveryReasonModel>>>
      getPartialDeliveryReasons(String rsnType) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + partialDeliveryReasonUrl));
      if (response.statusCode == 200) {
        log(response.body);
        // logger.w('response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> partilDeliveryReason = json['result'];
        List<PartialDeliveryReasonModel> reason = partilDeliveryReason
            .map<PartialDeliveryReasonModel>(
                (json) => PartialDeliveryReasonModel.fromJson(json))
            .toList();
        return right(reason);
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
  Future<Either<MainFailures, PartialDeliveryApprovalOutparasModel>>
      approvePartialDelivery(PartialDeliveryApprovalModel approveIn) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + partialDeliveryApprovalUrl), body: {
        "ReturnID": approveIn.returnId,
        "UserID": approveIn.userId,
        "JSONString": jsonEncode(approveIn.products)
      });
      log({
        "ReturnID": approveIn.returnId,
        "UserID": approveIn.userId,
        "JSONString": jsonEncode(approveIn.products)
      }.toString());
      if (response.statusCode == 200) {
        log('Approve Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final approve =
            PartialDeliveryApprovalOutparasModel.fromJson(json["result"][0]);
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
