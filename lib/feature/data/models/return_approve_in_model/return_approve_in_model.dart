import 'package:json_annotation/json_annotation.dart';

part 'return_approve_in_model.g.dart';

@JsonSerializable()
class ReturnApproveInModel {
  @JsonKey(name: 'rad_ID')
  String? radId;
  @JsonKey(name: 'Reason')
  String? reason;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'UserId')
  String? userID;
  @JsonKey(name: 'ReturnID')
  String? returnID;

  ReturnApproveInModel({
    this.radId,
    this.reason,
    this.status,
    this.userID,
    this.returnID,
  });

  factory ReturnApproveInModel.fromJson(Map<String, dynamic> json) {
    return _$ReturnApproveInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReturnApproveInModelToJson(this);
}
