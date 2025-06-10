import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/field_service_detail_model/field_service_detail_model.dart';
import 'package:customer_connect/feature/data/models/field_service_invoice_approval_model/field_service_invoice_approval_model.dart';
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
    // return right(dummyList);
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + fieldServicecHeaderUrl),
          body: {"UserID": userID});
      if (response.statusCode == 200) {
        log('response:${response.body}');
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
    // return right(dummyDetailList);
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

  @override
  Future<Either<MainFailures, FieldServiceInvoiceApprovalModel>>
      invoiceApprovalRepo(String reqID, String userID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + fieldServiceInvoiceApproval),
          body: {"ReqID": reqID, "UserID": userID});
      log({"ReqID": reqID, "UserID": userID}.toString());
      if (response.statusCode == 200) {
        log('Approve Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final approve =
            FieldServiceInvoiceApprovalModel.fromJson(json["result"][0]);
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

  @override
  Future<Either<MainFailures, FieldServiceInvoiceApprovalModel>> invoiceReject(
      String reqID, String userID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + fieldServiceInvoiceReject),
          body: {"ReqID": reqID, "UserID": userID});
          log({"ReqID": reqID, "UserID": userID}.toString());
      if (response.statusCode == 200) {
        log('Approve Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final approve =
            FieldServiceInvoiceApprovalModel.fromJson(json["result"][0]);
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

List<FieldServiceInvoiceHeaderModel> dummyList = [
  FieldServiceInvoiceHeaderModel(
      sahId: '1',
      cusCode: 'C001',
      cusName: 'Customer One',
      rotCode: 'R001',
      rotName: 'Route One',
      transTime: '2023-05-01T10:30:00Z',
      usrName: 'User One',
      sjhNumber: 'SJH001',
      snrCode: 'SNR001',
      status: 'Completed',
      sahTotal: '1000.00',
      sahDiscount: '50.00',
      sahSubTotal: '950.00',
      sahVat: '95.00',
      sahGrandTotal: '1045.00',
      userID: 'U001',
      rotID: 'R001'),
  FieldServiceInvoiceHeaderModel(
      sahId: '2',
      cusCode: 'C002',
      cusName: 'Customer Two',
      rotCode: 'R002',
      rotName: 'Route Two',
      transTime: '2023-05-02T11:00:00Z',
      usrName: 'User Two',
      sjhNumber: 'SJH002',
      snrCode: 'SNR002',
      status: 'Pending',
      sahTotal: '2000.00',
      sahDiscount: '100.00',
      sahSubTotal: '1900.00',
      sahVat: '190.00',
      sahGrandTotal: '2090.00',
      userID: 'U002',
      rotID: 'R002'),
  FieldServiceInvoiceHeaderModel(
      sahId: '3',
      cusCode: 'C003',
      cusName: 'Customer Three',
      rotCode: 'R003',
      rotName: 'Route Three',
      transTime: '2023-05-03T12:00:00Z',
      usrName: 'User Three',
      sjhNumber: 'SJH003',
      snrCode: 'SNR003',
      status: 'In Progress',
      sahTotal: '1500.00',
      sahDiscount: '75.00',
      sahSubTotal: '1425.00',
      sahVat: '142.50',
      sahGrandTotal: '1567.50',
      userID: 'U003',
      rotID: 'R003')
];
List<FieldServiceDetailModel> dummyDetailList = [
  FieldServiceDetailModel(
    sadId: '1',
    prdId: 'P001',
    prdCode: 'PRD001',
    prdName: 'Product One',
    sadUom: 'Box',
    sadQty: '10',
    sadPrice: '50.00',
    sadDiscount: '5.00',
    sadLineTotal: '450.00',
  ),
  FieldServiceDetailModel(
    sadId: '2',
    prdId: 'P002',
    prdCode: 'PRD002',
    prdName: 'Product Two',
    sadUom: 'Piece',
    sadQty: '20',
    sadPrice: '25.00',
    sadDiscount: '2.50',
    sadLineTotal: '475.00',
  ),
  FieldServiceDetailModel(
    sadId: '3',
    prdId: 'P003',
    prdCode: 'PRD003',
    prdName: 'Product Three',
    sadUom: 'Pack',
    sadQty: '15',
    sadPrice: '30.00',
    sadDiscount: '3.00',
    sadLineTotal: '405.00',
  )
];
