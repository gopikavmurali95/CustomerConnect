// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_transfer_approval_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoadTransferApprovalInModel _$LoadTransferApprovalInModelFromJson(
        Map<String, dynamic> json) =>
    LoadTransferApprovalInModel(
      ldrId: json['ldr_ID'] as String?,
      status: json['Status'] as String?,
      userId: json['UserId'] as String?,
      reqId: json['ReqID'] as String?,
    );

Map<String, dynamic> _$LoadTransferApprovalInModelToJson(
        LoadTransferApprovalInModel instance) =>
    <String, dynamic>{
      'ldr_ID': instance.ldrId,
      'Status': instance.status,
      'UserId': instance.userId,
      'ReqID': instance.reqId,
    };
