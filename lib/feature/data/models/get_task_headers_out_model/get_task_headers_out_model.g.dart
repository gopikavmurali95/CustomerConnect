// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_task_headers_out_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTaskHeadersOutModel _$GetTaskHeadersOutModelFromJson(
        Map<String, dynamic> json) =>
    GetTaskHeadersOutModel(
      taskName: json['TaskName'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      dueOn: json['DueOn'] as String?,
      compOn: json['CompOn'] as String?,
      status: json['Status'] as String?,
    )
      ..taskCode = json['TaskCode'] as String?
      ..taskArName = json['TaskArName'] as String?
      ..cusArName = json['cus_ArName'] as String?
      ..arStatus = json['ArStatus'] as String?;

Map<String, dynamic> _$GetTaskHeadersOutModelToJson(
        GetTaskHeadersOutModel instance) =>
    <String, dynamic>{
      'TaskName': instance.taskName,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'DueOn': instance.dueOn,
      'CompOn': instance.compOn,
      'Status': instance.status,
      'TaskCode': instance.taskCode,
      'TaskArName': instance.taskArName,
      'cus_ArName': instance.cusArName,
      'ArStatus': instance.arStatus,
    };
