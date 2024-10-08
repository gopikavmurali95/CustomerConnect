import 'package:json_annotation/json_annotation.dart';

part 'dispute_note_header_model.g.dart';

@JsonSerializable()
class DisputeNoteHeaderModel {
  @JsonKey(name: 'drh_ID')
  String? drhId;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'drh_rot_ID')
  String? drhRotId;
  @JsonKey(name: 'drh_TransID')
  String? drhTransId;
  @JsonKey(name: 'usr_Name')
  String? usrName;
  @JsonKey(name: 'drh_Amount')
  String? drhAmount;
  @JsonKey(name: 'drh_DisputeType')
  String? drhDisputeType;
  @JsonKey(name: 'TransTime')
  String? transTime;
  @JsonKey(name: 'drh_OtherInfo')
  String? drhOtherInfo;
  @JsonKey(name: 'DisputeType')
  String? disputeType;
  @JsonKey(name: 'drh_Remarks')
  String? drhRemarks;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'Image')
  String? image;
  @JsonKey(name: 'UserID')
  String? userID;
  @JsonKey(name: 'rotID')
  String? rotID;

  @JsonKey(name: 'Arcus_Name')
  String? arcusName;
  @JsonKey(name: 'Arusr_Name')
  String? arusrName;
  @JsonKey(name: 'Ardrh_OtherInfo')
  String? ardrhOtherInfo;
  @JsonKey(name: 'ArDisputeType')
  String? arDisputeType;
  @JsonKey(name: 'ArStatus')
  String? arStatus;

  DisputeNoteHeaderModel({
    this.drhId,
    this.cusCode,
    this.cusName,
    this.rotName,
    this.rotCode,
    this.drhRotId,
    this.drhTransId,
    this.usrName,
    this.drhAmount,
    this.drhDisputeType,
    this.transTime,
    this.drhOtherInfo,
    this.disputeType,
    this.drhRemarks,
    this.status,
    this.image,
    this.rotID,
    this.userID,
    this.arDisputeType,
    this.arStatus,
    this.arcusName,
    this.ardrhOtherInfo,
    this.arusrName,
  });

  factory DisputeNoteHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$DisputeNoteHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DisputeNoteHeaderModelToJson(this);
}
