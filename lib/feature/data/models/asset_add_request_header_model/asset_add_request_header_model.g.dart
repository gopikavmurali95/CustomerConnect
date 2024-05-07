// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_add_request_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssetAddRequestHeaderModel _$AssetAddRequestHeaderModelFromJson(
        Map<String, dynamic> json) =>
    AssetAddRequestHeaderModel(
      aahId: json['aah_ID'] as String?,
      aahAstId: json['aah_ast_ID'] as String?,
      aahSlno: json['aah_slno'] as String?,
      aahName: json['aah_Name'] as String?,
      aahRsnId: json['aah_rsn_ID'] as String?,
      aahRemarks: json['aah_Remarks'] as String?,
      aahCusId: json['aah_cus_ID'] as String?,
      aahUdpId: json['aah_udp_ID'] as String?,
      astName: json['ast_Name'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      createdDate: json['CreatedDate'] as String?,
      rotCode: json['rot_Code'] as String?,
      route: json['Route'] as String?,
      rsnName: json['rsn_Name'] as String?,
      astCode: json['ast_Code'] as String?,
      image: json['Image'] as String?,
    );

Map<String, dynamic> _$AssetAddRequestHeaderModelToJson(
        AssetAddRequestHeaderModel instance) =>
    <String, dynamic>{
      'aah_ID': instance.aahId,
      'aah_ast_ID': instance.aahAstId,
      'aah_slno': instance.aahSlno,
      'aah_Name': instance.aahName,
      'aah_rsn_ID': instance.aahRsnId,
      'aah_Remarks': instance.aahRemarks,
      'aah_cus_ID': instance.aahCusId,
      'aah_udp_ID': instance.aahUdpId,
      'ast_Name': instance.astName,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'CreatedDate': instance.createdDate,
      'rot_Code': instance.rotCode,
      'Route': instance.route,
      'rsn_Name': instance.rsnName,
      'ast_Code': instance.astCode,
      'Image': instance.image,
    };
