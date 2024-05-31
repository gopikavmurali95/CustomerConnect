// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_transfer_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoadTransferProductModel _$LoadTransferProductModelFromJson(
        Map<String, dynamic> json) =>
    LoadTransferProductModel(
      ldrId: json['ldr_ID'] as String?,
      status: json['Status'] as String?,
    );

Map<String, dynamic> _$LoadTransferProductModelToJson(
        LoadTransferProductModel instance) =>
    <String, dynamic>{
      'ldr_ID': instance.ldrId,
      'Status': instance.status,
    };
