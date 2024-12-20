import 'package:json_annotation/json_annotation.dart';

part 'credit_note_header_model.g.dart';

@JsonSerializable()
class CreditNoteHeaderModel {
  @JsonKey(name: 'cnh_ID')
  String? cnhId;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'usr_Name')
  String? usrName;
  @JsonKey(name: 'cnh_Number')
  String? cnhNumber;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;
  @JsonKey(name: 'cnh_Amount')
  String? cnhAmount;
  @JsonKey(name: 'cnh_SubTotal')
  String? cnhSubTotal;
  @JsonKey(name: 'cnh_VAT')
  String? cnhVat;
  @JsonKey(name: 'cnh_CreditType')
  String? cnhCreditType;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'UserID')
  String? userID;
  @JsonKey(name: 'rotID')
  String? rotID;
  @JsonKey(name: 'Arcus_Name')
  String? arcusName;
  @JsonKey(name: 'Arusr_Name')
  String? arusrName;
  @JsonKey(name: 'Arcnh_CreditType')
  String? arcnhCreditType;
  @JsonKey(name: 'ArStatus')
  String? arStatus;
  @JsonKey(name: 'Remarks')
  String? remarks;

  CreditNoteHeaderModel({
    this.cnhId,
    this.cusCode,
    this.cusName,
    this.rotName,
    this.rotCode,
    this.usrName,
    this.cnhNumber,
    this.createdDate,
    this.cnhAmount,
    this.cnhSubTotal,
    this.cnhVat,
    this.cnhCreditType,
    this.status,
    this.rotID,
    this.userID,
    this.arStatus,
    this.arcnhCreditType,
    this.arcusName,
    this.arusrName,
    this.remarks,
  });

  factory CreditNoteHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$CreditNoteHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CreditNoteHeaderModelToJson(this);
}
