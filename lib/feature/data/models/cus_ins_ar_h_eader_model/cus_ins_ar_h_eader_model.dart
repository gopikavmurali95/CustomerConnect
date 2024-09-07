import 'package:json_annotation/json_annotation.dart';

part 'cus_ins_ar_h_eader_model.g.dart';

@JsonSerializable()
class CusInsArHEaderModel {
  @JsonKey(name: 'arh_ID')
  String? arhId;
  @JsonKey(name: 'arh_ARNumber')
  String? arhArNumber;
  @JsonKey(name: 'cus_ID')
  String? cusId;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'csh_ID')
  String? cshId;
  @JsonKey(name: 'csh_Code')
  String? cshCode;
  @JsonKey(name: 'csh_Name')
  String? cshName;
  @JsonKey(name: 'Date')
  String? date;
  @JsonKey(name: 'Time')
  String? time;
  @JsonKey(name: 'rot_ID')
  String? rotId;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'PayMode')
  String? payMode;
  @JsonKey(name: 'PayType')
  String? payType;
  @JsonKey(name: 'CollectedAmount')
  String? collectedAmount;
  @JsonKey(name: 'BalanceAmount')
  String? balanceAmount;
  @JsonKey(name: 'ChequeNo')
  String? chequeNo;
  @JsonKey(name: 'ChequeDate')
  String? chequeDate;
  @JsonKey(name: 'arp_Image1')
  String? arpImage1;
  @JsonKey(name: 'bank_Name')
  String? bankName;
  @JsonKey(name: 'Arcus_Name')
  String? arcusName;
  @JsonKey(name: 'ArPayMode')
  String? arPayMode;
  @JsonKey(name: 'Arbank_Name')
  String? arBankName;
  @JsonKey(name: 'Arcsh_Name')
  String? arCshName;

  CusInsArHEaderModel(
      {this.arhId,
      this.arhArNumber,
      this.cusId,
      this.cusCode,
      this.cusName,
      this.cshId,
      this.cshCode,
      this.cshName,
      this.date,
      this.time,
      this.rotId,
      this.rotCode,
      this.rotName,
      this.payMode,
      this.payType,
      this.collectedAmount,
      this.balanceAmount,
      this.chequeNo,
      this.chequeDate,
      this.arpImage1,
      this.bankName,
      this.arBankName,
      this.arCshName,
      this.arPayMode,
      this.arcusName});

  factory CusInsArHEaderModel.fromJson(Map<String, dynamic> json) {
    return _$CusInsArHEaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CusInsArHEaderModelToJson(this);
}
