import 'package:json_annotation/json_annotation.dart';

part 'ar_header_model.g.dart';

@JsonSerializable()
class ArHeaderModel {
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
  @JsonKey(name: 'arh_PayMode')
  String? arhPayMode;
  @JsonKey(name: 'arh_PayType')
  String? arhPayType;
  @JsonKey(name: 'arh_CollectedAmount')
  String? arhCollectedAmount;
  @JsonKey(name: 'arh_BalanceAmount')
  String? arhBalanceAmount;
  @JsonKey(name: 'arp_ChequeNo')
  String? arpChequeNo;
  @JsonKey(name: 'arp_ChequeDate')
  String? arpChequeDate;
  @JsonKey(name: 'Image')
  String? image;
  String? bankName;

  ArHeaderModel({
    this.arhId,
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
    this.arhPayMode,
    this.arhPayType,
    this.arhCollectedAmount,
    this.arhBalanceAmount,
    this.arpChequeNo,
    this.arpChequeDate,
    this.image,
    this.bankName,
  });

  factory ArHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$ArHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ArHeaderModelToJson(this);
}
