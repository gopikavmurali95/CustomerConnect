// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partial_delivery_product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartialDeliveryProductModel _$PartialDeliveryProductModelFromJson(
        Map<String, dynamic> json) =>
    PartialDeliveryProductModel(
      dadId: json['dad_ID'] as String?,
      reason: json['Reason'] as String?,
      status: json['Status'] as String?,
    );

Map<String, dynamic> _$PartialDeliveryProductModelToJson(
        PartialDeliveryProductModel instance) =>
    <String, dynamic>{
      'dad_ID': instance.dadId,
      'Reason': instance.reason,
      'Status': instance.status,
    };
