import 'package:json_annotation/json_annotation.dart';

part 'get_task_count_model.g.dart';

@JsonSerializable()
class GetTaskCountModel {
  @JsonKey(name: 'AssignedTasks')
  String? assignedTasks;
  @JsonKey(name: 'CompletedTasks')
  String? completedTasks;

  GetTaskCountModel({this.assignedTasks, this.completedTasks});

  factory GetTaskCountModel.fromJson(Map<String, dynamic> json) {
    return _$GetTaskCountModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetTaskCountModelToJson(this);
}
