// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_header_out_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskHeaderOutModel _$TaskHeaderOutModelFromJson(Map<String, dynamic> json) =>
    TaskHeaderOutModel(
      tasks: (json['Tasks'] as List<dynamic>?)
          ?.map((e) => Task.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TaskHeaderOutModelToJson(TaskHeaderOutModel instance) =>
    <String, dynamic>{
      'Tasks': instance.tasks,
    };
