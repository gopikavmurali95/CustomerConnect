// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_reconfirm_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryReconfirmDetailModel _$InventoryReconfirmDetailModelFromJson(
        Map<String, dynamic> json) =>
    InventoryReconfirmDetailModel(
      iadId: json['iad_ID'] as String?,
      iadPrdId: json['iad_prd_ID'] as String?,
      iadHigherQty: json['iad_HigherQty'] as String?,
      iadLowerQty: json['iad_LowerQty'] as String?,
      iadPhysicalHQty: json['iad_PhysicalHQty'] as String?,
      iadPhysicalLQty: json['iad_PhysicalLQty'] as String?,
      iadDescHQty: json['iad_DescHQty'] as String?,
      iadDescLQty: json['iad_DescLQty'] as String?,
      iadHigherUom: json['iad_HigherUOM'] as String?,
      iadLowerUom: json['iad_LowerUOM'] as String?,
      iadPhysicalHuom: json['iad_PhysicalHUOM'] as String?,
      iadDescHuom: json['iad_DescHUOM'] as String?,
      iadDescLuom: json['iad_DescLUOM'] as String?,
      prdCode: json['prd_Code'] as String?,
      prdName: json['prd_Name'] as String?,
    )
      ..arprdName = json['Arprd_Name'] as String?
      ..status = json['Status'] as String?
      ..reason = json['Reason'] as String?
      ..iadPhysicalLuom = json['iad_PhysicalLUOM'] as String?;

Map<String, dynamic> _$InventoryReconfirmDetailModelToJson(
        InventoryReconfirmDetailModel instance) =>
    <String, dynamic>{
      'iad_ID': instance.iadId,
      'iad_prd_ID': instance.iadPrdId,
      'iad_HigherQty': instance.iadHigherQty,
      'iad_LowerQty': instance.iadLowerQty,
      'iad_PhysicalHQty': instance.iadPhysicalHQty,
      'iad_PhysicalLQty': instance.iadPhysicalLQty,
      'iad_DescHQty': instance.iadDescHQty,
      'iad_DescLQty': instance.iadDescLQty,
      'iad_HigherUOM': instance.iadHigherUom,
      'iad_LowerUOM': instance.iadLowerUom,
      'iad_PhysicalHUOM': instance.iadPhysicalHuom,
      'iad_DescHUOM': instance.iadDescHuom,
      'iad_DescLUOM': instance.iadDescLuom,
      'prd_Code': instance.prdCode,
      'prd_Name': instance.prdName,
      'Arprd_Name': instance.arprdName,
      'Status': instance.status,
      'Reason': instance.reason,
      'iad_PhysicalLUOM': instance.iadPhysicalLuom,
    };
