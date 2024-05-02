// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_return_approval_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduledReturnApprovalInModel _$ScheduledReturnApprovalInModelFromJson(
        Map<String, dynamic> json) =>
    ScheduledReturnApprovalInModel(
      userId: json['UserId'] as String?,
      returnId: json['ReturnID'] as String?,
      routeId: json['RouteId'] as String?,
      rrdId: json['rrd_ID'] as String?,
      reason: json['Reason'] as String?,
      status: json['Status'] as String?,
    );

Map<String, dynamic> _$ScheduledReturnApprovalInModelToJson(
        ScheduledReturnApprovalInModel instance) =>
    <String, dynamic>{
      'UserId': instance.userId,
      'ReturnID': instance.returnId,
      'RouteId': instance.routeId,
      'rrd_ID': instance.rrdId,
      'Reason': instance.reason,
      'Status': instance.status,
    };
