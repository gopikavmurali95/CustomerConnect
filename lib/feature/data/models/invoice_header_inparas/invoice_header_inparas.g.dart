// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_header_inparas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceHeaderInparas _$InvoiceHeaderInparasFromJson(
        Map<String, dynamic> json) =>
    InvoiceHeaderInparas(
      userId: json['UserID'] as String?,
      fromDate: json['FromDate'] as String?,
      toDate: json['ToDate'] as String?,
      route: json['Route'] as String?,
      area: json['Area'] as String?,
      subArea: json['SubArea'] as String?,
      invoiceType: json['InvoiceType'] as String?,
      paymentType: json['PaymentType'] as String?,
      customer: json['Customer'] as String?,
      customerOutlet: json['CustomerOutlet'] as String?,
      invoiceWith: json['InvoiceWith'] as String?,
    );

Map<String, dynamic> _$InvoiceHeaderInparasToJson(
        InvoiceHeaderInparas instance) =>
    <String, dynamic>{
      'UserID': instance.userId,
      'FromDate': instance.fromDate,
      'ToDate': instance.toDate,
      'Route': instance.route,
      'Area': instance.area,
      'SubArea': instance.subArea,
      'InvoiceType': instance.invoiceType,
      'PaymentType': instance.paymentType,
      'Customer': instance.customer,
      'CustomerOutlet': instance.customerOutlet,
      'InvoiceWith': instance.invoiceWith,
    };
