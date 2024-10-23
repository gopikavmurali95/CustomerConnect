import 'package:json_annotation/json_annotation.dart';

part 'schedule_return_approval_reason_model.g.dart';

@JsonSerializable()
class ScheduleReturnApprovalReasonModel {
  @JsonKey(name: 'rsn_ID')
  String? rsnId;
  @JsonKey(name: 'rsn_Name')
  String? rsnName;
  @JsonKey(name: 'rsn_Type')
  String? rsnType;

  ScheduleReturnApprovalReasonModel({
    this.rsnId,
    this.rsnName,
    this.rsnType,
  });

  factory ScheduleReturnApprovalReasonModel.fromJson(
      Map<String, dynamic> json) {
    return _$ScheduleReturnApprovalReasonModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ScheduleReturnApprovalReasonModelToJson(this);
  }
}
