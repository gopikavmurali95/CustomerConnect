import 'package:json_annotation/json_annotation.dart';

part 'settlement_payment_detail_model.g.dart';

@JsonSerializable()
class SettlementPaymentDetailModel {
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'type')
  String? type;
  @JsonKey(name: 'chequeNo')
  String? chequeNo;
  @JsonKey(name: 'chequeDate')
  String? chequeDate;
  @JsonKey(name: 'bnk_Name')
  String? bnkName;
  @JsonKey(name: 'amount')
  String? amount;

  SettlementPaymentDetailModel({
    this.cusCode,
    this.name,
    this.type,
    this.chequeNo,
    this.chequeDate,
    this.bnkName,
    this.amount,
  });

  factory SettlementPaymentDetailModel.fromJson(Map<String, dynamic> json) {
    return _$SettlementPaymentDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SettlementPaymentDetailModelToJson(this);
}
