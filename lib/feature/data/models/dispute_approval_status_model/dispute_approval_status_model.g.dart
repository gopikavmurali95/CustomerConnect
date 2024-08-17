// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispute_approval_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DisputeApprovalStatusModel _$DisputeApprovalStatusModelFromJson(
        Map<String, dynamic> json) =>
    DisputeApprovalStatusModel(
      status: json['Status'] as String?,
      currentLevel: json['CurrentLevel'] as String?,
      nextLevel: json['NextLevel'] as String?,
      arStatus: json['ArStatus'] as String?,
    );

Map<String, dynamic> _$DisputeApprovalStatusModelToJson(
        DisputeApprovalStatusModel instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'CurrentLevel': instance.currentLevel,
      'NextLevel': instance.nextLevel,
      'ArStatus': instance.arStatus,
    };
