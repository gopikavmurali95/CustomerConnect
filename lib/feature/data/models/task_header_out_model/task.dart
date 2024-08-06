import 'package:json_annotation/json_annotation.dart';

part 'task.g.dart';

@JsonSerializable()
class Task {
  @JsonKey(name: 'TaskName')
  String? taskName;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'DueOn')
  String? dueOn;
  @JsonKey(name: 'CompOn')
  dynamic compOn;
  @JsonKey(name: 'Status')
  String? status;

  Task({
    this.taskName,
    this.cusCode,
    this.cusName,
    this.dueOn,
    this.compOn,
    this.status,
  });

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  Map<String, dynamic> toJson() => _$TaskToJson(this);
}
