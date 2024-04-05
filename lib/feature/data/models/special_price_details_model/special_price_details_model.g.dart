// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_price_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecialPriceDetailsModel _$SpecialPriceDetailsModelFromJson(
        Map<String, dynamic> json) =>
    SpecialPriceDetailsModel(
      pldId: json['pld_ID'] as String?,
      pldPrhId: json['pld_prh_ID'] as String?,
      pldVatPerc: json['pld_VATPerc'] as String?,
      prdId: json['prd_ID'] as String?,
      prdCode: json['prd_Code'] as String?,
      prdName: json['prd_Name'] as String?,
      prdNameArabic: json['prd_NameArabic'] as String?,
      prdDescription: json['prd_Description'] as String?,
      uom: json['UOM'] as String?,
      stdPrice: json['StdPrice'] as String?,
      specialPrice: json['SpecialPrice'] as String?,
      pldReturnPrice: json['pld_ReturnPrice'] as String?,
    );

Map<String, dynamic> _$SpecialPriceDetailsModelToJson(
        SpecialPriceDetailsModel instance) =>
    <String, dynamic>{
      'pld_ID': instance.pldId,
      'pld_prh_ID': instance.pldPrhId,
      'pld_VATPerc': instance.pldVatPerc,
      'prd_ID': instance.prdId,
      'prd_Code': instance.prdCode,
      'prd_Name': instance.prdName,
      'prd_NameArabic': instance.prdNameArabic,
      'prd_Description': instance.prdDescription,
      'UOM': instance.uom,
      'StdPrice': instance.stdPrice,
      'SpecialPrice': instance.specialPrice,
      'pld_ReturnPrice': instance.pldReturnPrice,
    };
