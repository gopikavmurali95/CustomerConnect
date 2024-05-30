// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_change_prd_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceChangePrdModel _$PriceChangePrdModelFromJson(Map<String, dynamic> json) =>
    PriceChangePrdModel(
      pcdId: json['pcd_ID'] as String?,
      reason: json['Reason'] as String?,
      status: json['Status'] as String?,
      aprvdHprice: json['aprvdHprice'] as String?,
      aprvdLprice: json['aprvdLprice'] as String?,
    );

Map<String, dynamic> _$PriceChangePrdModelToJson(
        PriceChangePrdModel instance) =>
    <String, dynamic>{
      'pcd_ID': instance.pcdId,
      'Reason': instance.reason,
      'Status': instance.status,
      'aprvdHprice': instance.aprvdHprice,
      'aprvdLprice': instance.aprvdLprice,
    };
