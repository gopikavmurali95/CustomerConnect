// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_planned_visits_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChartPlannedVisitsModel _$ChartPlannedVisitsModelFromJson(
        Map<String, dynamic> json) =>
    ChartPlannedVisitsModel(
      planned: json['Planned'] as String?,
      visited: json['Visited'] as String?,
      pending: json['Pending'] as String?,
    );

Map<String, dynamic> _$ChartPlannedVisitsModelToJson(
        ChartPlannedVisitsModel instance) =>
    <String, dynamic>{
      'Planned': instance.planned,
      'Visited': instance.visited,
      'Pending': instance.pending,
    };
