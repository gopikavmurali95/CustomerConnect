// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PromotionHeaderModel _$PromotionHeaderModelFromJson(
        Map<String, dynamic> json) =>
    PromotionHeaderModel(
      id: json['ID'] as String?,
      pName: json['PName'] as String?,
      dateRange: json['DateRange'] as String?,
      pCode: json['PCode'] as String?,
      qCode: json['QCode'] as String?,
      aCode: json['ACode'] as String?,
      qid: json['QID'] as String?,
      aid: json['AID'] as String?,
      prmName: json['PrmName'] as String?,
      arPname: json['ArPName'] as String?,
      arPrmName: json['ArPrmName'] as String?,
    );

Map<String, dynamic> _$PromotionHeaderModelToJson(
        PromotionHeaderModel instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'PName': instance.pName,
      'DateRange': instance.dateRange,
      'PCode': instance.pCode,
      'QCode': instance.qCode,
      'ACode': instance.aCode,
      'QID': instance.qid,
      'AID': instance.aid,
      'PrmName': instance.prmName,
      'ArPName': instance.arPname,
      'ArPrmName': instance.arPrmName,
    };
