import 'package:json_annotation/json_annotation.dart';

part 'approval_reson_model.g.dart';

@JsonSerializable()
class ApprovalResonModel {
  @JsonKey(name: 'rsn_ID')
  String? rsnId;
  @JsonKey(name: 'rsn_Name')
  String? rsnName;
  @JsonKey(name: 'rsn_Type')
  String? rsnType;

  @JsonKey(name: 'rsn_ArName')
  String? rsnArName;
  ApprovalResonModel({this.rsnId, this.rsnName, this.rsnType, this.rsnArName});

  factory ApprovalResonModel.fromJson(Map<String, dynamic> json) {
    return _$ApprovalResonModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApprovalResonModelToJson(this);
}
