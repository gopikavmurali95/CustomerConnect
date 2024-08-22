// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cus_ins_onv_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CusInsOnvDetailModel _$CusInsOnvDetailModelFromJson(
        Map<String, dynamic> json) =>
    CusInsOnvDetailModel(
      prdId: json['prd_ID'] as String?,
      prdCode: json['prd_Code'] as String?,
      prdName: json['prd_Name'] as String?,
      lowerUom: json['LowerUOM'] as String?,
      higherUom: json['HigherUOM'] as String?,
      lowerQty: json['LowerQty'] as String?,
      higherQty: json['HigherQty'] as String?,
      amount: json['Amount'] as String?,
      prdtype: json['prd_Type'] as String?,
      arPrdName: json['Arprd_Name'] as String?,
      arPrdType: json['Arprd_Type'] as String?,
    );

Map<String, dynamic> _$CusInsOnvDetailModelToJson(
        CusInsOnvDetailModel instance) =>
    <String, dynamic>{
      'prd_ID': instance.prdId,
      'prd_Code': instance.prdCode,
      'prd_Name': instance.prdName,
      'LowerUOM': instance.lowerUom,
      'HigherUOM': instance.higherUom,
      'LowerQty': instance.lowerQty,
      'HigherQty': instance.higherQty,
      'Amount': instance.amount,
      'prd_Type': instance.prdtype,
      'Arprd_Name': instance.arPrdName,
      'Arprd_Type': instance.arPrdType,
    };
