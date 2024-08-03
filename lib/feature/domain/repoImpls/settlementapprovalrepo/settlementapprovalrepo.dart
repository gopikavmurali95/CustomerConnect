import 'dart:convert';
import 'dart:developer';
import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/post_settlement_approval/post_settlement_approval.dart';
import 'package:customer_connect/feature/data/models/settelemet_approval_reject/settelemet_approval_reject.dart';
import 'package:customer_connect/feature/data/models/settlemenet_approval_pay_mode_detail_model/settlemenet_approval_pay_mode_detail_model.dart';

import 'package:customer_connect/feature/data/models/settlement_payment_detail_model/settlement_payment_detail_model.dart';
import 'package:customer_connect/feature/data/models/settlemet_approvalcash_detail_model/settlemet_approvalcash_detail_model.dart';
import 'package:http/http.dart' as http;
import 'package:customer_connect/feature/data/models/settlement_approval_header_out_model/settlement_approval_header_out_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISettlementApprovalHeaderRepo)
class SettlementApproval implements ISettlementApprovalHeaderRepo {
  @override
  Future<Either<MainFailures, List<SettlementApprovalHeaderOutModel>>>
      getSettlementApprovalHeaders(
          String statusvalue, String searchQuery) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + settlementApprovalHeaderUrl),
          body: {"Status_Value": statusvalue});

      if (response.statusCode == 200) {
        // logger.w(' Settlement Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> headerdata = json['result'];
        List<SettlementApprovalHeaderOutModel> headers = headerdata
            .map<SettlementApprovalHeaderOutModel>(
                (json) => SettlementApprovalHeaderOutModel.fromJson(json))
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
  Future<Either<MainFailures, SettlemetApprovalcashDetailModel>>
      getSttlAppCashDetails(String udpID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + settlementApprovalCashDetailUrl),
          body: {"udpID": udpID});

      if (response.statusCode == 200) {
        log('Settlemt CashDetail: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final cashDetails =
            SettlemetApprovalcashDetailModel.fromJson(json["result"][0]);
        return right(cashDetails);
      } else {
        return left(
            const MainFailures.networkerror(error: "Something went wrong"));
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<SettlemenetApprovalPayModeDetailModel>>>
      getPayModeDetails(String udpID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + settlementApprovalPayModeDetailUrl),
          body: {"udpID": udpID});

      if (response.statusCode == 200) {
        log('Settlemt PayModeDetail: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> paymodedata = json['result'];
        List<SettlemenetApprovalPayModeDetailModel> paymodeDetails = paymodedata
            .map<SettlemenetApprovalPayModeDetailModel>(
                (json) => SettlemenetApprovalPayModeDetailModel.fromJson(json))
            .toList();
        // final paymodeDetails =
        //     SettlemenetApprovalPayModeDetailModel.fromJson(json["result"][0]);
        return right(paymodeDetails);
      } else {
        return left(
            const MainFailures.networkerror(error: "Something went wrong"));
      }
    } catch (e) {
      log(jsonEncode(e));
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<SettlementPaymentDetailModel>>>
      getPaymentDetails(String udpID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + settlementApprovalPaymentDetailUrl),
          body: {"udpID": udpID});

      if (response.statusCode == 200) {
        log('Settlemt PaymentDetail: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> paymentdata = json['result'];
        List<SettlementPaymentDetailModel> payment = paymentdata
            .map<SettlementPaymentDetailModel>(
                (json) => SettlementPaymentDetailModel.fromJson(json))
            .toList();
        return right(payment);
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
  Future<Either<MainFailures, PostSettlementApprovalModel>> postApprovaldetails(
      String udpID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + settlementApprovalPostUrl),
          body: {"udpID": udpID});

      if (response.statusCode == 200) {
        log('Settlemt PostResponse: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final postApproval =
            PostSettlementApprovalModel.fromJson(json["result"][0]);
        return right(postApproval);
      } else {
        return left(
            const MainFailures.networkerror(error: "Something went wrong"));
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, SettelemetApprovalReject>> rejectApprovaldetails(
      String udpID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + settlementApprovalRejectUrl),
          body: {"udpID": udpID});

      if (response.statusCode == 200) {
        log('Settlemt Reject Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final rejectApproval =
            SettelemetApprovalReject.fromJson(json["result"][0]);
        return right(rejectApproval);
      } else {
        return left(
            const MainFailures.networkerror(error: "Something went wrong"));
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }
}
