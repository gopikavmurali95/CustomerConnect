import 'package:json_annotation/json_annotation.dart';

part 'dispute_approval_resp_model.g.dart';

@JsonSerializable()
class DisputeApprovalRespModel {
  @JsonKey(name: 'Status')
  String? status;

  DisputeApprovalRespModel({this.status});

  factory DisputeApprovalRespModel.fromJson(Map<String, dynamic> json) {
    return _$DisputeApprovalRespModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DisputeApprovalRespModelToJson(this);
}
