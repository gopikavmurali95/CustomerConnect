// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_settlement_approval.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostSettlementApproval _$PostSettlementApprovalFromJson(
        Map<String, dynamic> json) =>
    PostSettlementApproval(
      status: json['Status'] as String?,
      res: json['Res'] == null
          ? null
          : Res.fromJson(json['Res'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostSettlementApprovalToJson(
        PostSettlementApproval instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'Res': instance.res,
    };
