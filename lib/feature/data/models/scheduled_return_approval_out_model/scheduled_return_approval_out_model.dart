import 'package:json_annotation/json_annotation.dart';

part 'scheduled_return_approval_out_model.g.dart';

@JsonSerializable()
class ScheduledReturnApprovalOutModel {
  @JsonKey(name: 'Status')
  String? status;

  ScheduledReturnApprovalOutModel({this.status});

  factory ScheduledReturnApprovalOutModel.fromJson(Map<String, dynamic> json) {
    return _$ScheduledReturnApprovalOutModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ScheduledReturnApprovalOutModelToJson(this);
  }
}
