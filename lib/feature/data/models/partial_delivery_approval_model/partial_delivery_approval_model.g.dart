// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partial_delivery_approval_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartialDeliveryApprovalModel _$PartialDeliveryApprovalModelFromJson(
        Map<String, dynamic> json) =>
    PartialDeliveryApprovalModel(
      returnId: json['ReturnID'] as String?,
      userId: json['UserId'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : PartialDeliveryProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PartialDeliveryApprovalModelToJson(
        PartialDeliveryApprovalModel instance) =>
    <String, dynamic>{
      'ReturnID': instance.returnId,
      'UserId': instance.userId,
      'products': instance.products,
    };
