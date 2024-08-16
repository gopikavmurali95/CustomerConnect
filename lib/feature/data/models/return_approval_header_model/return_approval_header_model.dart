import 'package:json_annotation/json_annotation.dart';

part 'return_approval_header_model.g.dart';

@JsonSerializable()
class ReturnApprovalHeaderModel {
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'rrh_RequestNumber')
  String? ithRequestNumber;
  @JsonKey(name: 'usr_Name')
  String? ustName;
  @JsonKey(name: 'rah_ID')
  String? rahId;
  @JsonKey(name: 'csh_Code')
  String? cshCode;
  @JsonKey(name: 'csh_Name')
  String? cshName;
  @JsonKey(name: 'Mode')
  String? mode;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;
  @JsonKey(name: 'rah_ApprovalStatus')
  String? rahApprovalStatus;
  @JsonKey(name: 'UserID')
  String? userID;
  @JsonKey(name: 'rotID')
  String? rotID;
  @JsonKey(name: 'Arcus_Name')
  String? arcusName;
  @JsonKey(name: 'Arusr_Name')
  String? arusrName;
  @JsonKey(name: 'Arrrh_ReturnType')
  String? arrrhReturnType;
  @JsonKey(name: 'Arrrh_Type')
  String? arrrhType;
  @JsonKey(name: 'ArStatus')
  String? arStatus;

  ReturnApprovalHeaderModel({
    this.cusCode,
    this.cusName,
    this.rotName,
    this.rotCode,
    this.ithRequestNumber,
    this.ustName,
    this.rahId,
    this.cshCode,
    this.cshName,
    this.mode,
    this.createdDate,
    this.rahApprovalStatus,
    this.userID,
    this.rotID,
    this.arStatus,
    this.arcusName,
    this.arrrhReturnType,
    this.arrrhType,
    this.arusrName,
  });

  factory ReturnApprovalHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$ReturnApprovalHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ReturnApprovalHeaderModelToJson(this);
}
