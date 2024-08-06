import 'package:json_annotation/json_annotation.dart';

import 'task.dart';

part 'task_header_out_model.g.dart';

@JsonSerializable()
class TaskHeaderOutModel {
  @JsonKey(name: 'Tasks')
  List<Task>? tasks;

  TaskHeaderOutModel({this.tasks});

  factory TaskHeaderOutModel.fromJson(Map<String, dynamic> json) {
    return _$TaskHeaderOutModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$TaskHeaderOutModelToJson(this);
}
