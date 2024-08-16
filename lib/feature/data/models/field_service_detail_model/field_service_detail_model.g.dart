// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_service_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FieldServiceDetailModel _$FieldServiceDetailModelFromJson(
        Map<String, dynamic> json) =>
    FieldServiceDetailModel(
      sadId: json['sad_ID'] as String?,
      prdId: json['prd_ID'] as String?,
      prdCode: json['prd_Code'] as String?,
      prdName: json['prd_Name'] as String?,
      sadUom: json['sad_UOM'] as String?,
      sadQty: json['sad_Qty'] as String?,
      sadPrice: json['sad_Price'] as String?,
      sadDiscount: json['sad_Discount'] as String?,
      sadLineTotal: json['sad_LineTotal'] as String?,
      arprdName: json['Arprd_Name'] as String?,
    );

Map<String, dynamic> _$FieldServiceDetailModelToJson(
        FieldServiceDetailModel instance) =>
    <String, dynamic>{
      'sad_ID': instance.sadId,
      'prd_ID': instance.prdId,
      'prd_Code': instance.prdCode,
      'prd_Name': instance.prdName,
      'sad_UOM': instance.sadUom,
      'sad_Qty': instance.sadQty,
      'sad_Price': instance.sadPrice,
      'sad_Discount': instance.sadDiscount,
      'sad_LineTotal': instance.sadLineTotal,
      'Arprd_Name': instance.arprdName,
    };
