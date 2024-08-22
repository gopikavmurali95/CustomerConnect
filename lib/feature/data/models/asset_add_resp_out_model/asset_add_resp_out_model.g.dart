// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_add_resp_out_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssetAddRespOutModel _$AssetAddRespOutModelFromJson(
        Map<String, dynamic> json) =>
    AssetAddRespOutModel(
      status: json['Status'] as String?,
      arStatus: json['ArStatus'] as String?,
    );

Map<String, dynamic> _$AssetAddRespOutModelToJson(
        AssetAddRespOutModel instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'ArStatus': instance.arStatus,
    };
