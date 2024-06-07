// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_reconfirm_prd_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryReconfirmPrdModel _$InventoryReconfirmPrdModelFromJson(
        Map<String, dynamic> json) =>
    InventoryReconfirmPrdModel(
      iadId: json['iad_ID'] as String?,
      reason: json['Reason'] as String?,
      status: json['Status'] as String?,
    );

Map<String, dynamic> _$InventoryReconfirmPrdModelToJson(
        InventoryReconfirmPrdModel instance) =>
    <String, dynamic>{
      'iad_ID': instance.iadId,
      'Reason': instance.reason,
      'Status': instance.status,
    };
