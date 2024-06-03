// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_order_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesOrderDetailsModel _$SalesOrderDetailsModelFromJson(
        Map<String, dynamic> json) =>
    SalesOrderDetailsModel(
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
      subTotal: (json['SubTotal'] as num?)?.toInt(),
      vat: (json['VAT'] as num?)?.toInt(),
      grandTotal: (json['GrandTotal'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SalesOrderDetailsModelToJson(
        SalesOrderDetailsModel instance) =>
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
    };
