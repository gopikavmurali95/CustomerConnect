// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_reconfirm_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryReconfirmDetailModel _$InventoryReconfirmDetailModelFromJson(
        Map<String, dynamic> json) =>
    InventoryReconfirmDetailModel(
      iahId: json['iah_ID'] as String?,
      iahTransId: json['iah_TransID'] as String?,
      iahUsrId: json['iah_usr_ID'] as String?,
      usrName: json['usr_Name'] as String?,
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
      createdDate: json['CreatedDate'] as String?,
      iahRotId: json['iah_rot_ID'] as String?,
      iahStatus: json['iah_Status'] as String?,
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
    );

Map<String, dynamic> _$InventoryReconfirmDetailModelToJson(
        InventoryReconfirmDetailModel instance) =>
    <String, dynamic>{
      'iah_ID': instance.iahId,
      'iah_TransID': instance.iahTransId,
      'iah_usr_ID': instance.iahUsrId,
      'usr_Name': instance.usrName,
      'rot_Code': instance.rotCode,
      'rot_Name': instance.rotName,
      'CreatedDate': instance.createdDate,
      'iah_rot_ID': instance.iahRotId,
      'iah_Status': instance.iahStatus,
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
    };
