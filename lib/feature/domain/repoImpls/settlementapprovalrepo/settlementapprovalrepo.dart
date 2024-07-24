import 'dart:convert';
import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:http/http.dart'as http;
import 'package:customer_connect/feature/data/models/settlement_approval_header_out_model/settlement_approval_header_out_model.dart';
import 'package:dartz/dartz.dart';

class SettlementApproval implements ISettlementApprovalHeaderRepo{
  @override
  Future<Either<MainFailures, List<SettlementApprovalHeaderOutModel>>>
   getSettlementApprovalHeaders(String statusvalue) async {
  try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + settlementApprovalHeaderUrl),
          body: {
            "Status_Value":statusvalue
          });

      if (response.statusCode == 200) {
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
}