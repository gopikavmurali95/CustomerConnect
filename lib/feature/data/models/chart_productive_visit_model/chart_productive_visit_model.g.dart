// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_productive_visit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChartProductiveVisitModel _$ChartProductiveVisitModelFromJson(
        Map<String, dynamic> json) =>
    ChartProductiveVisitModel(
      planned: json['Planned'] as String?,
      unplanned: json['Unplanned'] as String?,
      total: json['Total'] as String?,
    );

Map<String, dynamic> _$ChartProductiveVisitModelToJson(
        ChartProductiveVisitModel instance) =>
    <String, dynamic>{
      'Planned': instance.planned,
      'Unplanned': instance.unplanned,
      'Total': instance.total,
    };
