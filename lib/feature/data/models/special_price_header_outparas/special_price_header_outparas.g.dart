// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_price_header_outparas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecialPriceHeaderOutparas _$SpecialPriceHeaderOutparasFromJson(
        Map<String, dynamic> json) =>
    SpecialPriceHeaderOutparas(
      prhId: json['prh_ID'] as String?,
      prhCode: json['prh_Code'] as String?,
      prhName: json['prh_Name'] as String?,
      startDate: json['StartDate'] as String?,
      endDate: json['EndDate'] as String?,
      prhPayMode: json['prh_PayMode'] as String?,
    );

Map<String, dynamic> _$SpecialPriceHeaderOutparasToJson(
        SpecialPriceHeaderOutparas instance) =>
    <String, dynamic>{
      'prh_ID': instance.prhId,
      'prh_Code': instance.prhCode,
      'prh_Name': instance.prhName,
      'StartDate': instance.startDate,
      'EndDate': instance.endDate,
      'prh_PayMode': instance.prhPayMode,
    };
