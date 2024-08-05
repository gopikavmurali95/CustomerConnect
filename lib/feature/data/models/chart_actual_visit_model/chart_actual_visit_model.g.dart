// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_actual_visit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChartActualVisitModel _$ChartActualVisitModelFromJson(
        Map<String, dynamic> json) =>
    ChartActualVisitModel(
      planned: json['Planned'] as String?,
      unplanned: json['Unplanned'] as String?,
      total: json['Total'] as String?,
    );

Map<String, dynamic> _$ChartActualVisitModelToJson(
        ChartActualVisitModel instance) =>
    <String, dynamic>{
      'Planned': instance.planned,
      'Unplanned': instance.unplanned,
      'Total': instance.total,
    };
