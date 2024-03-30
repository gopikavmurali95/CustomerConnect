// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cus_promotion_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CusPromotionDetailModel _$CusPromotionDetailModelFromJson(
        Map<String, dynamic> json) =>
    CusPromotionDetailModel(
      minQty: json['minQty'] as String?,
      maxQty: json['maxQty'] as String?,
      qty: json['Qty'] as String?,
    );

Map<String, dynamic> _$CusPromotionDetailModelToJson(
        CusPromotionDetailModel instance) =>
    <String, dynamic>{
      'minQty': instance.minQty,
      'maxQty': instance.maxQty,
      'Qty': instance.qty,
    };
