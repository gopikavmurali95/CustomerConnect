// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journey_plan_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JourneyPlanHeaderModel _$JourneyPlanHeaderModelFromJson(
        Map<String, dynamic> json) =>
    JourneyPlanHeaderModel(
      jpsId: json['jps_ID'] as String?,
      jpsPrevSeq: json['jps_PrevSeq'] as String?,
      jpsCurrentSeq: json['jps_CurrentSeq'] as String?,
      createdDate: json['CreatedDate'] as String?,
      rotCode: json['rot_Code'] as String?,
      route: json['Route'] as String?,
      cusName: json['cus_Name'] as String?,
      cusCode: json['cus_Code'] as String?,
      rsnName: json['rsn_Name'] as String?,
      status: json['Status'] as String?,
    );

Map<String, dynamic> _$JourneyPlanHeaderModelToJson(
        JourneyPlanHeaderModel instance) =>
    <String, dynamic>{
      'jps_ID': instance.jpsId,
      'jps_PrevSeq': instance.jpsPrevSeq,
      'jps_CurrentSeq': instance.jpsCurrentSeq,
      'CreatedDate': instance.createdDate,
      'rot_Code': instance.rotCode,
      'Route': instance.route,
      'cus_Name': instance.cusName,
      'cus_Code': instance.cusCode,
      'rsn_Name': instance.rsnName,
      'Status': instance.status,
    };
