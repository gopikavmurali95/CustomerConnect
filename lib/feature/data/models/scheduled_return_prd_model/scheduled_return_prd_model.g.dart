// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduled_return_prd_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduledReturnPrdModel _$ScheduledReturnPrdModelFromJson(
        Map<String, dynamic> json) =>
    ScheduledReturnPrdModel(
      rrdId: json['rrd_ID'] as String?,
      reason: json['Reason'] as String?,
      status: json['Status'] as String?,
    );

Map<String, dynamic> _$ScheduledReturnPrdModelToJson(
        ScheduledReturnPrdModel instance) =>
    <String, dynamic>{
      'rrd_ID': instance.rrdId,
      'Reason': instance.reason,
      'Status': instance.status,
    };
