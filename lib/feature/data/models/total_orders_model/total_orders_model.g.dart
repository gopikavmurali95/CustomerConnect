// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total_orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TotalOrdersModel _$TotalOrdersModelFromJson(Map<String, dynamic> json) =>
    TotalOrdersModel(
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
      rotId: json['rot_ID'] as String?,
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
      status: json['Status'] as String?,
      subTotal: json['SubTotal'] as String?,
      vat: json['VAT'] as String?,
      grandTotal: json['GrandTotal'] as String?,
      ordType: json['ord_Type'] as String?,
      arcshName: json['Arcsh_Name'] as String?,
      arcusName: json['Arcus_Name'] as String?,
    );

Map<String, dynamic> _$TotalOrdersModelToJson(TotalOrdersModel instance) =>
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
      'rot_ID': instance.rotId,
      'rot_Code': instance.rotCode,
      'rot_Name': instance.rotName,
      'Status': instance.status,
      'SubTotal': instance.subTotal,
      'VAT': instance.vat,
      'GrandTotal': instance.grandTotal,
      'ord_Type': instance.ordType,
      'Arcus_Name': instance.arcusName,
      'Arcsh_Name': instance.arcshName,
    };
