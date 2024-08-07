// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_task_count_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetTaskCountModel _$GetTaskCountModelFromJson(Map<String, dynamic> json) =>
    GetTaskCountModel(
      assignedTasks: json['AssignedTasks'] as String?,
      completedTasks: json['CompletedTasks'] as String?,
    );

Map<String, dynamic> _$GetTaskCountModelToJson(GetTaskCountModel instance) =>
    <String, dynamic>{
      'AssignedTasks': instance.assignedTasks,
      'CompletedTasks': instance.completedTasks,
    };
