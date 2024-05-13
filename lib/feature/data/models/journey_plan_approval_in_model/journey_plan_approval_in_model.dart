import 'package:json_annotation/json_annotation.dart';

part 'journey_plan_approval_in_model.g.dart';

@JsonSerializable()
class JourneyPlanApprovalInModel {
  @JsonKey(name: 'UserId')
  String? userId;
  @JsonKey(name: 'jps_ID')
  String? jpsId;

  JourneyPlanApprovalInModel({this.userId, this.jpsId});

  factory JourneyPlanApprovalInModel.fromJson(Map<String, dynamic> json) {
    return _$JourneyPlanApprovalInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$JourneyPlanApprovalInModelToJson(this);
}
