import 'package:json_annotation/json_annotation.dart';

part 'get_task_header_in_model.g.dart';

@JsonSerializable()
class GetTaskHeaderInModel {
  @JsonKey(name: 'FromDate')
  String? fromDate;
  @JsonKey(name: 'ToDate')
  String? toDate;
  @JsonKey(name: 'Status')
  String? status;

  GetTaskHeaderInModel({this.fromDate, this.toDate, this.status});

  factory GetTaskHeaderInModel.fromJson(Map<String, dynamic> json) {
    return _$GetTaskHeaderInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetTaskHeaderInModelToJson(this);
}
