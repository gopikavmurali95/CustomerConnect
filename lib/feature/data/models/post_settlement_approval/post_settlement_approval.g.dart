// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_settlement_approval.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostSettlementApprovalModel _$PostSettlementApprovalModelFromJson(
        Map<String, dynamic> json) =>
    PostSettlementApprovalModel(
      status: json['Status'] as String?,
      res: json['Res'] as String?,
    );

Map<String, dynamic> _$PostSettlementApprovalModelToJson(
        PostSettlementApprovalModel instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'Res': instance.res,
    };
