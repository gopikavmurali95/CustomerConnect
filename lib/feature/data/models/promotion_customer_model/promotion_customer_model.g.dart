// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PromotionCustomerModel _$PromotionCustomerModelFromJson(
        Map<String, dynamic> json) =>
    PromotionCustomerModel(
      cusCode: json['CusCode'] as String?,
      cusName: json['CusName'] as String?,
      cusType: json['CusType'] as String?,
      areaName: json['AreaName'] as String?,
      promotionCustomerModelClass: json['Class'] as String?,
      id: json['ID'] as String?,
    );

Map<String, dynamic> _$PromotionCustomerModelToJson(
        PromotionCustomerModel instance) =>
    <String, dynamic>{
      'CusCode': instance.cusCode,
      'CusName': instance.cusName,
      'CusType': instance.cusType,
      'AreaName': instance.areaName,
      'Class': instance.promotionCustomerModelClass,
      'ID': instance.id,
    };
