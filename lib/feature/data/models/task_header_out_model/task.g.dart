// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) => Task(
      taskName: json['TaskName'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      dueOn: json['DueOn'] as String?,
      compOn: json['CompOn'],
      status: json['Status'] as String?,
    );

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'TaskName': instance.taskName,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'DueOn': instance.dueOn,
      'CompOn': instance.compOn,
      'Status': instance.status,
    };
