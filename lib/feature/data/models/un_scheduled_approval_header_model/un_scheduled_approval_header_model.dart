import 'package:json_annotation/json_annotation.dart';

part 'un_scheduled_approval_header_model.g.dart';

@JsonSerializable()
class UnScheduledApprovalHeaderModel {
  @JsonKey(name: 'uva_ID')
  String? uvaId;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'rot_Type')
  String? rotType;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;
  @JsonKey(name: 'Status')
  String? status;

  UnScheduledApprovalHeaderModel({
    this.uvaId,
    this.rotCode,
    this.rotName,
    this.rotType,
    this.cusCode,
    this.cusName,
    this.createdDate,
    this.status,
  });

  factory UnScheduledApprovalHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$UnScheduledApprovalHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$UnScheduledApprovalHeaderModelToJson(this);
  }
}
