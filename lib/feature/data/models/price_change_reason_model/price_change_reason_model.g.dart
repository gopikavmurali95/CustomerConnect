// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_change_reason_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceChangeReasonModel _$PriceChangeReasonModelFromJson(
        Map<String, dynamic> json) =>
    PriceChangeReasonModel(
      rsnId: json['rsn_ID'] as String?,
      rsnName: json['rsn_Name'] as String?,
      rsnType: json['rsn_Type'] as String?,
      rsnArName: json['rsn_ArName'] as String?,
    );

Map<String, dynamic> _$PriceChangeReasonModelToJson(
        PriceChangeReasonModel instance) =>
    <String, dynamic>{
      'rsn_ID': instance.rsnId,
      'rsn_Name': instance.rsnName,
      'rsn_Type': instance.rsnType,
      'rsn_ArName': instance.rsnArName,
    };
