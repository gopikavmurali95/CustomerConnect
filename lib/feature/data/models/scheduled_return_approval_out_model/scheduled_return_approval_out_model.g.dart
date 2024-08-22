// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_return_approval_out_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduledReturnApprovalOutModel _$ScheduledReturnApprovalOutModelFromJson(
        Map<String, dynamic> json) =>
    ScheduledReturnApprovalOutModel(
      status: json['Status'] as String?,
      arStatus: json['ArStatus'] as String?,
    );

Map<String, dynamic> _$ScheduledReturnApprovalOutModelToJson(
        ScheduledReturnApprovalOutModel instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'ArStatus': instance.arStatus,
    };
