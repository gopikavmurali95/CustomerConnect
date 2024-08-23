// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_reconfirm_approval_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryReconfirmApprovalRespModel
    _$InventoryReconfirmApprovalRespModelFromJson(Map<String, dynamic> json) =>
        InventoryReconfirmApprovalRespModel(
          status: json['Status'] as String?,
        )..arStatus = json['ArStatus'] as String?;

Map<String, dynamic> _$InventoryReconfirmApprovalRespModelToJson(
        InventoryReconfirmApprovalRespModel instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'ArStatus': instance.arStatus,
    };
