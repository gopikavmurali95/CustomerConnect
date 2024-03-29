// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todays_delivery_in_paras.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodaysDeliveryInParas _$TodaysDeliveryInParasFromJson(
        Map<String, dynamic> json) =>
    TodaysDeliveryInParas(
      userId: json['UserID'] as String?,
      fromDate: json['FromDate'] as String?,
      toDate: json['ToDate'] as String?,
      mode: json['Mode'] as String?,
      route: json['Route'] as String?,
      area: json['Area'] as String?,
      subArea: json['SubArea'] as String?,
      customer: json['Customer'] as String?,
      customerOutlet: json['CustomerOutlet'] as String?,
    );

Map<String, dynamic> _$TodaysDeliveryInParasToJson(
        TodaysDeliveryInParas instance) =>
    <String, dynamic>{
      'UserID': instance.userId,
      'FromDate': instance.fromDate,
      'ToDate': instance.toDate,
      'Mode': instance.mode,
      'Route': instance.route,
      'Area': instance.area,
      'SubArea': instance.subArea,
      'Customer': instance.customer,
      'CustomerOutlet': instance.customerOutlet,
    };
