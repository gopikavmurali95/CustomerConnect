// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cus_sp_price_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CusSpPriceModel _$CusSpPriceModelFromJson(Map<String, dynamic> json) =>
    CusSpPriceModel(
      prhId: json['prh_ID'] as String?,
      prhCode: json['prh_Code'] as String?,
      prhName: json['prh_Name'] as String?,
      startDate: json['StartDate'] as String?,
      endDate: json['EndDate'] as String?,
      prhPayMode: json['prh_PayMode'] as String?,
    );

Map<String, dynamic> _$CusSpPriceModelToJson(CusSpPriceModel instance) =>
    <String, dynamic>{
      'prh_ID': instance.prhId,
      'prh_Code': instance.prhCode,
      'prh_Name': instance.prhName,
      'StartDate': instance.startDate,
      'EndDate': instance.endDate,
      'prh_PayMode': instance.prhPayMode,
    };
