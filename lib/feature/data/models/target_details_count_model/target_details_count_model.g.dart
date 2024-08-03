// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'target_details_count_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TargetDetailsCountModel _$TargetDetailsCountModelFromJson(
        Map<String, dynamic> json) =>
    TargetDetailsCountModel(
      month: json['Month'] as String?,
      totWorkingDays: json['TotWorkingDays'] as String?,
      completedDays: json['CompletedDays'] as String?,
    );

Map<String, dynamic> _$TargetDetailsCountModelToJson(
        TargetDetailsCountModel instance) =>
    <String, dynamic>{
      'Month': instance.month,
      'TotWorkingDays': instance.totWorkingDays,
      'CompletedDays': instance.completedDays,
    };
