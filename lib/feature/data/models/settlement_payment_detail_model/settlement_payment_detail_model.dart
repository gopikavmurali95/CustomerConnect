import 'package:json_annotation/json_annotation.dart';

part 'settlement_payment_detail_model.g.dart';

@JsonSerializable()
class SettlementPaymentDetailModel {
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  String? name;
  String? type;
  String? chequeNo;
  String? chequeDate;
  @JsonKey(name: 'bnk_Name')
  String? bnkName;
  int? amount;

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
