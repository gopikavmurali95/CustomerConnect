// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispute_invoice_approve_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DisputeInvoiceApproveInModel _$DisputeInvoiceApproveInModelFromJson(
        Map<String, dynamic> json) =>
    DisputeInvoiceApproveInModel(
      reqId: json['ReqID'] as String?,
      remark: json['Remark'] as String?,
      nextLevel: json['NextLevel'] as String?,
      userId: json['UserId'] as String?,
    );

Map<String, dynamic> _$DisputeInvoiceApproveInModelToJson(
        DisputeInvoiceApproveInModel instance) =>
    <String, dynamic>{
      'ReqID': instance.reqId,
      'Remark': instance.remark,
      'NextLevel': instance.nextLevel,
      'UserId': instance.userId,
    };
