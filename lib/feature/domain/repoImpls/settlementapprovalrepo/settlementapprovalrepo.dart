import 'dart:convert';
import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/settlemenet_approval_paymode_detail_model/settlemenet_approval_paymode_detail_model.dart';
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
      getSettlementApprovalHeaders(String statusvalue) async {
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
        logger.w('Settlemt CashDetail: ${response.body}');
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
  Future<Either<MainFailures, SettlemenetApprovalPaymodeDetailModel>> 
  getPayModeDetails(String udpID) async {
     try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + settlementApprovalPayModeDetailUrl),
          body: {"udpID": udpID});

      if (response.statusCode == 200) {
        logger.w('Settlemt PayModeDetail: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final paymodeDetails =
           SettlemenetApprovalPaymodeDetailModel.fromJson(json["result"][0]);
        return right(paymodeDetails);
      } else {
        return left(
            const MainFailures.networkerror(error: "Something went wrong"));
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }
  
  @override
  Future<Either<MainFailures, SettlementPaymentDetailModel>>
   getPaymentDetails(String udpID) async{


     try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + settlementApprovalPaymentDetailUrl),
          body: {"udpID": udpID});

      if (response.statusCode == 200) {
        logger.w('Settlemt PaymentDetail: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final paymentDetails =
           SettlementPaymentDetailModel.fromJson(json["result"][0]);
        return right(paymentDetails);
      } else {
        return left(
            const MainFailures.networkerror(error: "Something went wrong"));
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
    
  
  }

}
