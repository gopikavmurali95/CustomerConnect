import 'package:json_annotation/json_annotation.dart';

part 'joutney_plan_approval_out_model.g.dart';

@JsonSerializable()
class JoutneyPlanApprovalOutModel {
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'ArStatus')
  String? arstatus;

  JoutneyPlanApprovalOutModel({this.status, this.arstatus});

  factory JoutneyPlanApprovalOutModel.fromJson(Map<String, dynamic> json) {
    return _$JoutneyPlanApprovalOutModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$JoutneyPlanApprovalOutModelToJson(this);
}
