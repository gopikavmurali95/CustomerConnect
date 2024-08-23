// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loading_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoadingDetailModel _$LoadingDetailModelFromJson(Map<String, dynamic> json) =>
    LoadingDetailModel(
      prdId: json['prd_ID'] as String?,
      prdCode: json['prd_Code'] as String?,
      prdName: json['prd_Name'] as String?,
      lowerUom: json['LowerUOM'] as String?,
      higherUom: json['HigherUOM'] as String?,
      lowerQty: json['LowerQty'] as String?,
      higherQty: json['HigherQty'] as String?,
      liHigherUom: json['LiHigherUom'] as String?,
      liLowerUom: json['LiLowerUom'] as String?,
      arprddesc: json['Arprd_desc'] as String?,
      arprdname: json['Arprd_name'] as String?,
    );

Map<String, dynamic> _$LoadingDetailModelToJson(LoadingDetailModel instance) =>
    <String, dynamic>{
      'prd_ID': instance.prdId,
      'prd_Code': instance.prdCode,
      'prd_Name': instance.prdName,
      'LowerUOM': instance.lowerUom,
      'HigherUOM': instance.higherUom,
      'LowerQty': instance.lowerQty,
      'HigherQty': instance.higherQty,
      'LiHigherUom': instance.liHigherUom,
      'LiLowerUom': instance.liLowerUom,
      'Arprd_name': instance.arprdname,
      'Arprd_desc': instance.arprddesc,
    };
