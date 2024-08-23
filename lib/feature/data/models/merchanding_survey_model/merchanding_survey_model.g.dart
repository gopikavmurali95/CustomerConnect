// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchanding_survey_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MerchandingSurveyModel _$MerchandingSurveyModelFromJson(
        Map<String, dynamic> json) =>
    MerchandingSurveyModel(
      surveyName: json['SurveyName'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      dueOn: json['DueOn'] as String?,
      compOn: json['CompOn'] as String?,
      status: json['Status'] as String?,
    )
      ..surveyArName = json['SurveyArName'] as String?
      ..cusArName = json['cus_ArName'] as String?
      ..arStatus = json['ArStatus'] as String?;

Map<String, dynamic> _$MerchandingSurveyModelToJson(
        MerchandingSurveyModel instance) =>
    <String, dynamic>{
      'SurveyName': instance.surveyName,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'DueOn': instance.dueOn,
      'CompOn': instance.compOn,
      'Status': instance.status,
      'SurveyArName': instance.surveyArName,
      'cus_ArName': instance.cusArName,
      'ArStatus': instance.arStatus,
    };
