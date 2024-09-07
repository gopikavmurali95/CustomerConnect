import 'package:json_annotation/json_annotation.dart';

part 'load_transfer_approval_header_model.g.dart';

@JsonSerializable()
class LoadTransferApprovalHeaderModel {
  @JsonKey(name: 'ltr_ID')
  String? ltrId;
  @JsonKey(name: 'ltr_reqNo')
  String? ltrReqNo;
  @JsonKey(name: 'ltr_usr_ID')
  String? ltrUsrId;
  @JsonKey(name: 'usr_Name')
  String? usrName;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;
  @JsonKey(name: 'ltr_rot_ID')
  String? ltrRotId;
  @JsonKey(name: 'ltr_Type')
  String? ltrType;
  @JsonKey(name: 'ltr_Remarks')
  String? ltrRemarks;
  @JsonKey(name: 'ltr_ApprovalStatus')
  String? ltrApprovalStatus;
  @JsonKey(name: 'UserID')
  String? userID;
  @JsonKey(name: 'rotID')
  String? rotID;
  @JsonKey(name: 'usr_ArName')
  String? usrArName;
  @JsonKey(name: 'ltr_ArApprovalStatus')
  String? ltrArApprovalStatus;

  LoadTransferApprovalHeaderModel({
    this.ltrId,
    this.ltrReqNo,
    this.ltrUsrId,
    this.usrName,
    this.rotCode,
    this.rotName,
    this.createdDate,
    this.ltrRotId,
    this.ltrType,
    this.ltrRemarks,
    this.ltrApprovalStatus,
    this.rotID,
    this.userID,
    this.ltrArApprovalStatus,
    this.usrArName,
  });

  factory LoadTransferApprovalHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$LoadTransferApprovalHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LoadTransferApprovalHeaderModelToJson(this);
  }
}
