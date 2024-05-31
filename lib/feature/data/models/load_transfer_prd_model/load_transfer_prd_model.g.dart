// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_transfer_prd_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoadTransferPrdModel _$LoadTransferPrdModelFromJson(
        Map<String, dynamic> json) =>
    LoadTransferPrdModel(
      ldrId: json['ldr_ID'] as String?,
      status: json['Status'] as String?,
    );

Map<String, dynamic> _$LoadTransferPrdModelToJson(
        LoadTransferPrdModel instance) =>
    <String, dynamic>{
      'ldr_ID': instance.ldrId,
      'Status': instance.status,
    };
