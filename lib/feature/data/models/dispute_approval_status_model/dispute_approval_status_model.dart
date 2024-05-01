import 'package:json_annotation/json_annotation.dart';

part 'dispute_approval_status_model.g.dart';

@JsonSerializable()
class DisputeApprovalStatusModel {
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'CurrentLevel')
  String? currentLevel;
  @JsonKey(name: 'NextLevel')
  String? nextLevel;

  DisputeApprovalStatusModel({
    this.status,
    this.currentLevel,
    this.nextLevel,
  });

  factory DisputeApprovalStatusModel.fromJson(Map<String, dynamic> json) {
    return _$DisputeApprovalStatusModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DisputeApprovalStatusModelToJson(this);
}
