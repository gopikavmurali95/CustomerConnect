// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partial_delivery_reason_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartialDeliveryReasonModel _$PartialDeliveryReasonModelFromJson(
        Map<String, dynamic> json) =>
    PartialDeliveryReasonModel(
      rsnId: json['rsn_ID'] as String?,
      rsnName: json['rsn_Name'] as String?,
      rsnArName: json['rsn_ArName'] as String?,
    );

Map<String, dynamic> _$PartialDeliveryReasonModelToJson(
        PartialDeliveryReasonModel instance) =>
    <String, dynamic>{
      'rsn_ID': instance.rsnId,
      'rsn_Name': instance.rsnName,
      'rsn_ArName': instance.rsnArName,
    };
