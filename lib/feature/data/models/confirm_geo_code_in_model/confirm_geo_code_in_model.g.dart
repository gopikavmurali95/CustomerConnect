// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_geo_code_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmGeoCodeInModel _$ConfirmGeoCodeInModelFromJson(
        Map<String, dynamic> json) =>
    ConfirmGeoCodeInModel(
      cusId: json['cus_ID'] as String?,
      cglCusGeoLoc: json['cgl_CusGeoLoc'] as String?,
      cglId: json['cgl_ID'] as String?,
    );

Map<String, dynamic> _$ConfirmGeoCodeInModelToJson(
        ConfirmGeoCodeInModel instance) =>
    <String, dynamic>{
      'cus_ID': instance.cusId,
      'cgl_CusGeoLoc': instance.cglCusGeoLoc,
      'cgl_ID': instance.cglId,
    };
