// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todays_delivery_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodaysDeliveryDetailsModel _$TodaysDeliveryDetailsModelFromJson(
        Map<String, dynamic> json) =>
    TodaysDeliveryDetailsModel(
      prhId: json['prd_ID'] as String?,
      prhCode: json['prd_Code'] as String?,
      prhName: json['prd_Name'] as String?,
      hQty: json['HigherQty'] as String?,
      hUom: json['HigherUOM'] as String?,
      lQty: json['LowerQty'] as String?,
      lUom: json['LowerUOM'] as String?,
      total: json['Total'] as String?,
    );

Map<String, dynamic> _$TodaysDeliveryDetailsModelToJson(
        TodaysDeliveryDetailsModel instance) =>
    <String, dynamic>{
      'prd_ID': instance.prhId,
      'prd_Code': instance.prhCode,
      'prd_Name': instance.prhName,
      'LowerUOM': instance.lUom,
      'HigherUOM': instance.hUom,
      'HigherQty': instance.hQty,
      'LowerQty': instance.lQty,
      'Total': instance.total,
    };
