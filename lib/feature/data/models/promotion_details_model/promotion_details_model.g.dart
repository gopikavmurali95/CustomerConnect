// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PromotionDetailsModel _$PromotionDetailsModelFromJson(
        Map<String, dynamic> json) =>
    PromotionDetailsModel(
      minQty: json['minQty'] as String?,
      maxQty: json['maxQty'] as String?,
      qty: json['Qty'] as String?,
    );

Map<String, dynamic> _$PromotionDetailsModelToJson(
        PromotionDetailsModel instance) =>
    <String, dynamic>{
      'minQty': instance.minQty,
      'maxQty': instance.maxQty,
      'Qty': instance.qty,
    };
