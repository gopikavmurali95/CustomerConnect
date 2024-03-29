// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cus_items_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CusItemsModel _$CusItemsModelFromJson(Map<String, dynamic> json) =>
    CusItemsModel(
      crpPrhId: json['crp_prh_ID'] as String?,
      prdId: json['prd_ID'] as String?,
      pldUomId: json['pld_uom_ID'] as String?,
      pldPrice: json['pld_Price'] as String?,
      pldReturnPrice: json['pld_ReturnPrice'] as String?,
      prdCode: json['prd_Code'] as String?,
      prdName: json['prd_Name'] as String?,
      uomName: json['uom_Name'] as String?,
    );

Map<String, dynamic> _$CusItemsModelToJson(CusItemsModel instance) =>
    <String, dynamic>{
      'crp_prh_ID': instance.crpPrhId,
      'prd_ID': instance.prdId,
      'pld_uom_ID': instance.pldUomId,
      'pld_Price': instance.pldPrice,
      'pld_ReturnPrice': instance.pldReturnPrice,
      'prd_Code': instance.prdCode,
      'prd_Name': instance.prdName,
      'uom_Name': instance.uomName,
    };
