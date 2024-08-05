// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_non_productive_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChartNonProductiveModel _$ChartNonProductiveModelFromJson(
        Map<String, dynamic> json) =>
    ChartNonProductiveModel(
      planned: json['Planned'] as String?,
      unplanned: json['Unplanned'] as String?,
      total: json['Total'] as String?,
    );

Map<String, dynamic> _$ChartNonProductiveModelToJson(
        ChartNonProductiveModel instance) =>
    <String, dynamic>{
      'Planned': instance.planned,
      'Unplanned': instance.unplanned,
      'Total': instance.total,
    };
