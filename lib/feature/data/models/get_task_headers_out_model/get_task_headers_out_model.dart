import 'package:json_annotation/json_annotation.dart';

part 'get_task_headers_out_model.g.dart';

@JsonSerializable()
class GetTaskHeadersOutModel {
  @JsonKey(name: 'TaskName')
  String? taskName;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'DueOn')
  String? dueOn;
  @JsonKey(name: 'CompOn')
  String? compOn;
  @JsonKey(name: 'Status')
  String? status;

  GetTaskHeadersOutModel({
    this.taskName,
    this.cusCode,
    this.cusName,
    this.dueOn,
    this.compOn,
    this.status,
  });

  factory GetTaskHeadersOutModel.fromJson(Map<String, dynamic> json) {
    return _$GetTaskHeadersOutModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetTaskHeadersOutModelToJson(this);
}
