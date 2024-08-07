// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_task_header_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTaskHeaderInModel _$GetTaskHeaderInModelFromJson(
        Map<String, dynamic> json) =>
    GetTaskHeaderInModel(
      fromDate: json['FromDate'] as String?,
      toDate: json['ToDate'] as String?,
      status: json['Status'] as String?,
    );

Map<String, dynamic> _$GetTaskHeaderInModelToJson(
        GetTaskHeaderInModel instance) =>
    <String, dynamic>{
      'FromDate': instance.fromDate,
      'ToDate': instance.toDate,
      'Status': instance.status,
    };
