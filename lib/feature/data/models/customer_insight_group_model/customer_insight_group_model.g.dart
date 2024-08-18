// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_insight_group_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerInsightGroupModel _$CustomerInsightGroupModelFromJson(
        Map<String, dynamic> json) =>
    CustomerInsightGroupModel(
      prdCode: json['prdCode'] as String?,
      prdName: json['prdName'] as String?,
      prdArName: json['prd_ArName'] as String?,
    );

Map<String, dynamic> _$CustomerInsightGroupModelToJson(
        CustomerInsightGroupModel instance) =>
    <String, dynamic>{
      'prdCode': instance.prdCode,
      'prdName': instance.prdName,
      'prd_ArName': instance.prdArName,
    };
