// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_approve_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReturnApproveInModel _$ReturnApproveInModelFromJson(
        Map<String, dynamic> json) =>
    ReturnApproveInModel(
      products: (json['products'] as List<dynamic>?)
          ?.map(
              (e) => e == null ? null : ReturnApprovalProductModel.fromJson(e))
          .toList(),
      userID: json['UserId'] as String?,
      returnID: json['ReturnID'] as String?,
    );

Map<String, dynamic> _$ReturnApproveInModelToJson(
        ReturnApproveInModel instance) =>
    <String, dynamic>{
      'UserId': instance.userID,
      'ReturnID': instance.returnID,
      'products': instance.products,
    };
