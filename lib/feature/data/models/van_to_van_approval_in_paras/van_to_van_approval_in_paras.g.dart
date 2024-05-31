// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'van_to_van_approval_in_paras.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VanToVanApprovalInParas _$VanToVanApprovalInParasFromJson(
        Map<String, dynamic> json) =>
    VanToVanApprovalInParas(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : VanToVanProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      userID: json['UserId'] as String?,
      reqID: json['ReqID'] as String?,
    );

Map<String, dynamic> _$VanToVanApprovalInParasToJson(
        VanToVanApprovalInParas instance) =>
    <String, dynamic>{
      'products': instance.products,
      'UserId': instance.userID,
      'ReqID': instance.reqID,
    };
