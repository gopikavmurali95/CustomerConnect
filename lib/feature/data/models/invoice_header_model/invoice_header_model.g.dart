// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceHeaderModel _$InvoiceHeaderModelFromJson(Map<String, dynamic> json) =>
    InvoiceHeaderModel(
      invoiceNo: json['InvoiceNo'] as String?,
      rotId: json['rot_ID'] as String?,
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
      status: json['Status'] as String?,
      cusName: json['cusName'] as String?,
      cusCode: json['cusCode'] as String?,
      cusOutName: json['cusOutName'] as String?,
      cusOutCode: json['cusOutCode'] as String?,
      payType: json['PayType'] as String?,
      payMode: json['PayMode'] as String?,
      date: json['Date'] as String?,
      time: json['Time'] as String?,
      id: json['ID'] as String?,
      grandTotal: json['GrandTotal'] as String?,
      invoiceType: json['InvoiceType'] as String?,
      arStatus: json['ArStatus'] as String?,
      arcusName: json['ArcusName'] as String?,
      arcusOutName: json['ArcusOutName'] as String?,
    );

Map<String, dynamic> _$InvoiceHeaderModelToJson(InvoiceHeaderModel instance) =>
    <String, dynamic>{
      'InvoiceNo': instance.invoiceNo,
      'rot_ID': instance.rotId,
      'rot_Code': instance.rotCode,
      'rot_Name': instance.rotName,
      'Status': instance.status,
      'cusName': instance.cusName,
      'cusCode': instance.cusCode,
      'cusOutName': instance.cusOutName,
      'cusOutCode': instance.cusOutCode,
      'PayType': instance.payType,
      'PayMode': instance.payMode,
      'Date': instance.date,
      'Time': instance.time,
      'ID': instance.id,
      'GrandTotal': instance.grandTotal,
      'InvoiceType': instance.invoiceType,
      'ArcusName': instance.arcusName,
      'ArStatus': instance.arStatus,
      'ArcusOutName': instance.arcusOutName,
    };
