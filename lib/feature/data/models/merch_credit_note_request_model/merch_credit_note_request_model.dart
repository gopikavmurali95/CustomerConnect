import 'package:json_annotation/json_annotation.dart';

part 'merch_credit_note_request_model.g.dart';

@JsonSerializable()
class MerchCreditNoteRequestModel {
  @JsonKey(name: 'cnh_ID')
  String? cnhId;
  @JsonKey(name: 'cnh_Number')
  String? cnhNumber;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'Date')
  String? date;
  String? status;

  MerchCreditNoteRequestModel({
    this.cnhId,
    this.cnhNumber,
    this.rotCode,
    this.rotName,
    this.cusCode,
    this.cusName,
    this.date,
    this.status,
  });

  factory MerchCreditNoteRequestModel.fromJson(Map<String, dynamic> json) {
    return _$MerchCreditNoteRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MerchCreditNoteRequestModelToJson(this);
}
