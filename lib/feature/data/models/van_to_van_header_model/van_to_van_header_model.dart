import 'package:json_annotation/json_annotation.dart';

part 'van_to_van_header_model.g.dart';

@JsonSerializable()
class VanToVanHeaderModel {
  @JsonKey(name: 'vvh_ID')
  String? vvhId;
  @JsonKey(name: 'vvh_TransID')
  String? vvhTransId;
  @JsonKey(name: 'vvh_FromRot')
  String? vvhFromRot;
  @JsonKey(name: 'vvh_ToRot')
  String? vvhToRot;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;
  @JsonKey(name: 'Approval_Status')
  String? approvalStatus;
  @JsonKey(name: 'UserID')
  String? userID;
  @JsonKey(name: 'rotID')
  String? rotID;

  VanToVanHeaderModel(
      {this.vvhId,
      this.vvhTransId,
      this.vvhFromRot,
      this.vvhToRot,
      this.status,
      this.createdDate,
      this.approvalStatus,
      this.rotID,
      this.userID});

  factory VanToVanHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$VanToVanHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VanToVanHeaderModelToJson(this);
}
