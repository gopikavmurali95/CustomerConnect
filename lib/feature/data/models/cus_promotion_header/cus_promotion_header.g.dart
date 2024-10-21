// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cus_promotion_header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CusPromotionHeader _$CusPromotionHeaderFromJson(Map<String, dynamic> json) =>
    CusPromotionHeader(
      id: json['ID'] as String?,
      pName: json['PName'] as String?,
      dateRange: json['DateRange'] as String?,
      pCode: json['PCode'] as String?,
      qCode: json['QCode'] as String?,
      aCode: json['ACode'] as String?,
      qid: json['QID'] as String?,
      aid: json['AID'] as String?,
      arPName: json['ArPName'] as String?,
      prmName: json['PrmName'] as String?,
    );

Map<String, dynamic> _$CusPromotionHeaderToJson(CusPromotionHeader instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'PName': instance.pName,
      'DateRange': instance.dateRange,
      'PCode': instance.pCode,
      'QCode': instance.qCode,
      'ACode': instance.aCode,
      'QID': instance.qid,
      'AID': instance.aid,
      'ArPName': instance.arPName,
      'PrmName': instance.prmName,
    };
