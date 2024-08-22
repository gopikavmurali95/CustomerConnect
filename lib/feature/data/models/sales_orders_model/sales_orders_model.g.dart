// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesOrdersModel _$SalesOrdersModelFromJson(Map<String, dynamic> json) =>
    SalesOrdersModel(
      ordId: json['ord_ID'] as String?,
      orderId: json['OrderID'] as String?,
      cusId: json['cus_ID'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      cshId: json['csh_ID'] as String?,
      cshCode: json['csh_Code'] as String?,
      cshName: json['csh_Name'] as String?,
      date: json['Date'] as String?,
      time: json['Time'] as String?,
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
      rotId: json['rot_ID'] as String?,
      status: json['Status'] as String?,
      subTotal: json['SubTotal'] as String?,
      vat: json['VAT'] as String?,
      grandTotal: json['GrandTotal'] as String?,
    )
      ..arcusName = json['Arcus_Name'] as String?
      ..arStatus = json['ArStatus'] as String?
      ..arcshName = json['Arcsh_Name'] as String?;

Map<String, dynamic> _$SalesOrdersModelToJson(SalesOrdersModel instance) =>
    <String, dynamic>{
      'ord_ID': instance.ordId,
      'OrderID': instance.orderId,
      'cus_ID': instance.cusId,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'csh_ID': instance.cshId,
      'csh_Code': instance.cshCode,
      'csh_Name': instance.cshName,
      'Date': instance.date,
      'Time': instance.time,
      'rot_Code': instance.rotCode,
      'rot_Name': instance.rotName,
      'rot_ID': instance.rotId,
      'Status': instance.status,
      'SubTotal': instance.subTotal,
      'VAT': instance.vat,
      'GrandTotal': instance.grandTotal,
      'Arcus_Name': instance.arcusName,
      'ArStatus': instance.arStatus,
      'Arcsh_Name': instance.arcshName,
    };
