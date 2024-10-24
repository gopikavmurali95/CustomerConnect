// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_return_approval_reason_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduleReturnApprovalReasonModel _$ScheduleReturnApprovalReasonModelFromJson(
        Map<String, dynamic> json) =>
    ScheduleReturnApprovalReasonModel(
      rsnId: json['rsn_ID'] as String?,
      rsnName: json['rsn_Name'] as String?,
      rsnType: json['rsn_Type'] as String?,
    );

Map<String, dynamic> _$ScheduleReturnApprovalReasonModelToJson(
        ScheduleReturnApprovalReasonModel instance) =>
    <String, dynamic>{
      'rsn_ID': instance.rsnId,
      'rsn_Name': instance.rsnName,
      'rsn_Type': instance.rsnType,
    };
