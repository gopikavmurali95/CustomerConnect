import 'package:json_annotation/json_annotation.dart';

part 'scheduled_return_approval_in_model.g.dart';

@JsonSerializable()
class ScheduledReturnApprovalInModel {
  @JsonKey(name: 'UserId')
  String? userId;
  @JsonKey(name: 'ReturnID')
  String? returnId;
  @JsonKey(name: 'RouteId')
  String? routeId;
  @JsonKey(name: 'rrd_ID')
  String? rrdId;
  @JsonKey(name: 'Reason')
  String? reason;
  @JsonKey(name: 'Status')
  String? status;

  ScheduledReturnApprovalInModel({
    this.userId,
    this.returnId,
    this.routeId,
    this.rrdId,
    this.reason,
    this.status,
  });

  factory ScheduledReturnApprovalInModel.fromJson(Map<String, dynamic> json) {
    return _$ScheduledReturnApprovalInModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ScheduledReturnApprovalInModelToJson(this);
  }
}
