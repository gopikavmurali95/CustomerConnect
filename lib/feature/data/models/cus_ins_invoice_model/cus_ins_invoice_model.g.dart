// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cus_ins_invoice_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CusInsInvoiceModel _$CusInsInvoiceModelFromJson(Map<String, dynamic> json) =>
    CusInsInvoiceModel(
      invoiceNo: json['InvoiceNo'] as String?,
      invoiceType: json['InvoiceType'] as String?,
      status: json['Status'] as String?,
      date: json['Date'] as String?,
      time: json['Time'] as String?,
      id: json['ID'] as String?,
      grandTotal: json['GrandTotal'] as String?,
    )..arStatus = json['ArStatus'] as String?;

Map<String, dynamic> _$CusInsInvoiceModelToJson(CusInsInvoiceModel instance) =>
    <String, dynamic>{
      'InvoiceNo': instance.invoiceNo,
      'InvoiceType': instance.invoiceType,
      'Status': instance.status,
      'Date': instance.date,
      'Time': instance.time,
      'ID': instance.id,
      'GrandTotal': instance.grandTotal,
      'ArStatus': instance.arStatus,
    };
