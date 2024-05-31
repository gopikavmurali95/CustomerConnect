// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'van_to_van_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VanToVanProductModel _$VanToVanProductModelFromJson(
        Map<String, dynamic> json) =>
    VanToVanProductModel(
      vvdId: json['vvd_ID'] as String?,
      hqty: json['HQTY'] as String?,
      lqty: json['LQTY'] as String?,
      status: json['Status'] as String?,
    );

Map<String, dynamic> _$VanToVanProductModelToJson(
        VanToVanProductModel instance) =>
    <String, dynamic>{
      'vvd_ID': instance.vvdId,
      'HQTY': instance.hqty,
      'LQTY': instance.lqty,
      'Status': instance.status,
    };
