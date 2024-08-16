// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_removal_request_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssetRemovalRequestHeaderModel _$AssetRemovalRequestHeaderModelFromJson(
        Map<String, dynamic> json) =>
    AssetRemovalRequestHeaderModel(
      arqId: json['arq_ID'] as String?,
      arqRemarks: json['arq_Remarks'] as String?,
      arqStatus: json['arq_Status'] as String?,
      astCode: json['ast_Code'] as String?,
      astName: json['ast_Name'] as String?,
      rsnName: json['rsn_Name'] as String?,
      rsnType: json['rsn_Type'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      atmCode: json['atm_Code'] as String?,
      atmName: json['atm_Name'] as String?,
      createdDate: json['CreatedDate'] as String?,
      rotCode: json['rot_Code'] as String?,
      route: json['Route'] as String?,
      arqAstId: json['arq_ast_ID'] as String?,
      arqCusId: json['arq_cus_ID'] as String?,
      arqAscId: json['arq_asc_ID'] as String?,
      image: json['Image'] as String?,
      rotID: json['rotID'] as String?,
      userID: json['UserID'] as String?,
      astArName: json['ast_ArName'] as String?,
      atmArName: json['atm_ArName'] as String?,
      cusArName: json['cus_ArName'] as String?,
      rsnArName: json['rsn_ArName'] as String?,
      rsnArType: json['rsn_ArType'] as String?,
    );

Map<String, dynamic> _$AssetRemovalRequestHeaderModelToJson(
        AssetRemovalRequestHeaderModel instance) =>
    <String, dynamic>{
      'arq_ID': instance.arqId,
      'arq_Remarks': instance.arqRemarks,
      'arq_Status': instance.arqStatus,
      'ast_Code': instance.astCode,
      'ast_Name': instance.astName,
      'rsn_Name': instance.rsnName,
      'rsn_Type': instance.rsnType,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'atm_Code': instance.atmCode,
      'atm_Name': instance.atmName,
      'CreatedDate': instance.createdDate,
      'rot_Code': instance.rotCode,
      'Route': instance.route,
      'arq_ast_ID': instance.arqAstId,
      'arq_cus_ID': instance.arqCusId,
      'arq_asc_ID': instance.arqAscId,
      'Image': instance.image,
      'UserID': instance.userID,
      'rotID': instance.rotID,
      'ast_ArName': instance.astArName,
      'rsn_ArName': instance.rsnArName,
      'rsn_ArType': instance.rsnArType,
      'cus_ArName': instance.cusArName,
      'atm_ArName': instance.atmArName,
    };
