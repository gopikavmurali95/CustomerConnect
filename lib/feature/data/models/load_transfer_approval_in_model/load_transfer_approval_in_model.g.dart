// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_transfer_approval_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoadTransferApprovalInModel _$LoadTransferApprovalInModelFromJson(
        Map<String, dynamic> json) =>
    LoadTransferApprovalInModel(
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : LoadTransferProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      userId: json['UserId'] as String?,
      reqId: json['ReqID'] as String?,
    );

Map<String, dynamic> _$LoadTransferApprovalInModelToJson(
        LoadTransferApprovalInModel instance) =>
    <String, dynamic>{
      'products': instance.products,
      'UserId': instance.userId,
      'ReqID': instance.reqId,
    };
