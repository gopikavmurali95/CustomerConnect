import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/field_service_detail_model/field_service_detail_model.dart';
import 'package:customer_connect/feature/data/models/field_service_invoice_header_model/field_service_invoice_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IFieldServiceInvoiceApprovalRepo)
class FieldServiceInvoiceApprovalRepo
    implements IFieldServiceInvoiceApprovalRepo {
  @override
  Future<Either<MainFailures, List<FieldServiceInvoiceHeaderModel>>>
      getFieldServiceApprovalHeaders(String userID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + fieldServicecHeaderUrl),
          body: {"UserID": userID});
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> headerdata = json['result'];
        List<FieldServiceInvoiceHeaderModel> headers = headerdata
            .map<FieldServiceInvoiceHeaderModel>(
                (json) => FieldServiceInvoiceHeaderModel.fromJson(json))
            .toList();
        return right(headers);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log("field service header error resp $e");
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<FieldServiceDetailModel>>>
      getFieldServiceApprovalDetails(String reqID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + fieldServiceDetailUrl),
          body: {"ReqID": reqID});

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> detaildata = json['result'];
        List<FieldServiceDetailModel> details = detaildata
            .map<FieldServiceDetailModel>(
                (json) => FieldServiceDetailModel.fromJson(json))
            .toList();
        return right(details);
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
}
