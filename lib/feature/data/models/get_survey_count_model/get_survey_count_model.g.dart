// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_survey_count_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetSurveyCountModel _$GetSurveyCountModelFromJson(Map<String, dynamic> json) =>
    GetSurveyCountModel(
      assignedSurvey: json['AssignedSurvey'] as String?,
      completedSurvey: json['CompletedSurvey'] as String?,
    );

Map<String, dynamic> _$GetSurveyCountModelToJson(
        GetSurveyCountModel instance) =>
    <String, dynamic>{
      'AssignedSurvey': instance.assignedSurvey,
      'CompletedSurvey': instance.completedSurvey,
    };
