// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joutney_plan_approval_out_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JoutneyPlanApprovalOutModel _$JoutneyPlanApprovalOutModelFromJson(
        Map<String, dynamic> json) =>
    JoutneyPlanApprovalOutModel(
      status: json['Status'] as String?,
      arstatus: json['ArStatus'] as String?,
    );

Map<String, dynamic> _$JoutneyPlanApprovalOutModelToJson(
        JoutneyPlanApprovalOutModel instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'ArStatus': instance.arstatus,
    };
