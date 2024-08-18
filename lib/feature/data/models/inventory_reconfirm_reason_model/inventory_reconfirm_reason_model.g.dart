// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_reconfirm_reason_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryReconfirmReasonModel _$InventoryReconfirmReasonModelFromJson(
        Map<String, dynamic> json) =>
    InventoryReconfirmReasonModel(
      rsnId: json['rsn_ID'] as String?,
      rsnName: json['rsn_Name'] as String?,
      rsnArName: json['rsn_ArName'] as String?,
    );

Map<String, dynamic> _$InventoryReconfirmReasonModelToJson(
        InventoryReconfirmReasonModel instance) =>
    <String, dynamic>{
      'rsn_ID': instance.rsnId,
      'rsn_Name': instance.rsnName,
      'rsn_ArName': instance.rsnArName,
    };
