// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_reconfirm_approve_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryReconfirmApproveInModel _$InventoryReconfirmApproveInModelFromJson(
        Map<String, dynamic> json) =>
    InventoryReconfirmApproveInModel(
      reqId: json['ReqID'] as String?,
      userId: json['UserId'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : InventoryReconfirmPrdModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InventoryReconfirmApproveInModelToJson(
        InventoryReconfirmApproveInModel instance) =>
    <String, dynamic>{
      'ReqID': instance.reqId,
      'UserId': instance.userId,
      'products': instance.products,
    };
