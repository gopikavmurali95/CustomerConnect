// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_reconfirm_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryReconfirmHeaderModel _$InventoryReconfirmHeaderModelFromJson(
        Map<String, dynamic> json) =>
    InventoryReconfirmHeaderModel(
      iahId: json['iah_ID'] as String?,
      iahTransId: json['iah_TransID'] as String?,
      iahUsrId: json['iah_usr_ID'] as String?,
      usrName: json['usr_Name'] as String?,
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
      createdDate: json['CreatedDate'] as String?,
      iahRotId: json['iah_rot_ID'] as String?,
      iahStatus: json['iah_Status'] as String?,
    )
      ..arusrName = json['Arusr_Name'] as String?
      ..ariahStatus = json['Ariah_Status'] as String?;

Map<String, dynamic> _$InventoryReconfirmHeaderModelToJson(
        InventoryReconfirmHeaderModel instance) =>
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
      'Arusr_Name': instance.arusrName,
      'Ariah_Status': instance.ariahStatus,
    };
