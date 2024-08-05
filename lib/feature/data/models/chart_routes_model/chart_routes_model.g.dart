// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_routes_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChartRoutesModel _$ChartRoutesModelFromJson(Map<String, dynamic> json) =>
    ChartRoutesModel(
      active: json['Active'] as String?,
      daysStarted: json['DaysStarted'] as String?,
      daysNotStarted: json['DaysNotStarted'] as String?,
    );

Map<String, dynamic> _$ChartRoutesModelToJson(ChartRoutesModel instance) =>
    <String, dynamic>{
      'Active': instance.active,
      'DaysStarted': instance.daysStarted,
      'DaysNotStarted': instance.daysNotStarted,
    };
