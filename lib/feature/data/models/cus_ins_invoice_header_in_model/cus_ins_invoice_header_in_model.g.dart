// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cus_ins_invoice_header_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CusInsInvoiceHeaderInModel _$CusInsInvoiceHeaderInModelFromJson(
        Map<String, dynamic> json) =>
    CusInsInvoiceHeaderInModel(
      userId: json['UserID'] as String?,
      fromDate: json['FromDate'] as String?,
      toDate: json['ToDate'] as String?,
      route: json['Route'] as String?,
      area: json['Area'] as String?,
      subArea: json['SubArea'] as String?,
      invoiceType: json['InvoiceType'] as String?,
      paymentType: json['PaymentType'] as String?,
      invoiceWith: json['InvoiceWith'] as String?,
      cusId: json['CusID'] as String?,
    );

Map<String, dynamic> _$CusInsInvoiceHeaderInModelToJson(
        CusInsInvoiceHeaderInModel instance) =>
    <String, dynamic>{
      'UserID': instance.userId,
      'FromDate': instance.fromDate,
      'ToDate': instance.toDate,
      'Route': instance.route,
      'Area': instance.area,
      'SubArea': instance.subArea,
      'InvoiceType': instance.invoiceType,
      'PaymentType': instance.paymentType,
      'InvoiceWith': instance.invoiceWith,
      'CusID': instance.cusId,
    };
