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
  });

  factory DisputeNoteHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$DisputeNoteHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DisputeNoteHeaderModelToJson(this);
}
