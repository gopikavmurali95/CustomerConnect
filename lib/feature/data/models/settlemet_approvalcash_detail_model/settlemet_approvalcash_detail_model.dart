import 'package:json_annotation/json_annotation.dart';

part 'settlemet_approvalcash_detail_model.g.dart';

@JsonSerializable()
class SettlemetApprovalcashDetailModel {
  @JsonKey(name: 'CashInv')
  int? cashInv;
  @JsonKey(name: 'CashAR')
  int? cashAr;
  int? debitNote;
  @JsonKey(name: 'CashTotal')
  int? cashTotal;
  @JsonKey(name: 'CashAdv')
  int? cashAdv;
  @JsonKey(name: 'PendingBalance')
  int? pendingBalance;

  SettlemetApprovalcashDetailModel({
    this.cashInv,
    this.cashAr,
    this.debitNote,
    this.cashTotal,
    this.cashAdv,
    this.pendingBalance,
  });

  factory SettlemetApprovalcashDetailModel.fromJson(Map<String, dynamic> json) {
    return _$SettlemetApprovalcashDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SettlemetApprovalcashDetailModelToJson(this);
  }
}
