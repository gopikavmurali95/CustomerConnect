// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todays_delivery_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodaysDeliveryHeaderModel _$TodaysDeliveryHeaderModelFromJson(
        Map<String, dynamic> json) =>
    TodaysDeliveryHeaderModel(
      orderId: json['OrderID'] as String?,
      rotId: json['rot_ID'] as String?,
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
      status: json['Status'] as String?,
      cusName: json['cusName'] as String?,
      cusCode: json['cusCode'] as String?,
      cusOutName: json['cusOutName'] as String?,
      cusOutCode: json['cusOutCode'] as String?,
      salesman: json['salesman'] as String?,
      date: json['Date'] as String?,
      time: json['Time'] as String?,
      id: json['ID'] as String?,
      subTotal: json['SubTotal'] as String?,
      vat: json['VAT'] as String?,
      grandTotal: json['GrandTotal'] as String?,
      arStatus: json['ArStatus'] as String?,
      arcusName: json['ArcusName'] as String?,
      arcusOutName: json['ArcusOutName'] as String?,
      arsalesman: json['Arsalesman'] as String?,
    );

Map<String, dynamic> _$TodaysDeliveryHeaderModelToJson(
        TodaysDeliveryHeaderModel instance) =>
    <String, dynamic>{
      'OrderID': instance.orderId,
      'rot_ID': instance.rotId,
      'rot_Code': instance.rotCode,
      'rot_Name': instance.rotName,
      'Status': instance.status,
      'cusName': instance.cusName,
      'cusCode': instance.cusCode,
      'cusOutName': instance.cusOutName,
      'cusOutCode': instance.cusOutCode,
      'salesman': instance.salesman,
      'Date': instance.date,
      'Time': instance.time,
      'ID': instance.id,
      'SubTotal': instance.subTotal,
      'VAT': instance.vat,
      'GrandTotal': instance.grandTotal,
      'ArcusName': instance.arcusName,
      'ArStatus': instance.arStatus,
      'ArcusOutName': instance.arcusOutName,
      'Arsalesman': instance.arsalesman,
    };
