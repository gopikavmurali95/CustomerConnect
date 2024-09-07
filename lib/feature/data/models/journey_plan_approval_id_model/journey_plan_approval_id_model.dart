import 'package:json_annotation/json_annotation.dart';

part 'journey_plan_approval_id_model.g.dart';

@JsonSerializable()
class JourneyPlanApprovalIdModel {
  @JsonKey(name: 'jps_ID')
  String? jpsId;

  JourneyPlanApprovalIdModel({this.jpsId});

  factory JourneyPlanApprovalIdModel.fromJson(Map<String, dynamic> json) {
    return _$JourneyPlanApprovalIdModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$JourneyPlanApprovalIdModelToJson(this);
}
