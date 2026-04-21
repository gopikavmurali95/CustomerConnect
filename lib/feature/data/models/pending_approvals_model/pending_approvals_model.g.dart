// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pending_approvals_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PendingApprovalsModel _$PendingApprovalsModelFromJson(
        Map<String, dynamic> json) =>
    PendingApprovalsModel(
      approvalType: json['ApprovalType'] as String?,
      customer: json['Customer'] as String?,
      approvalId: json['ApprovalID'] as String?,
      headerId: json['HeaderID'] as String?,
      createdDate: json['CreatedDate'] as String?,
    );

Map<String, dynamic> _$PendingApprovalsModelToJson(
        PendingApprovalsModel instance) =>
    <String, dynamic>{
      'ApprovalType': instance.approvalType,
      'Customer': instance.customer,
      'ApprovalID': instance.approvalId,
      'HeaderID': instance.headerId,
      'CreatedDate': instance.createdDate,
    };
