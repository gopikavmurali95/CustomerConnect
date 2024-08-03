import 'package:json_annotation/json_annotation.dart';

part 'settlemet_approvalcash_detail_model.g.dart';

@JsonSerializable()
class SettlemetApprovalcashDetailModel {
  @JsonKey(name: 'CashInv')
  String? cashInv;
  @JsonKey(name: 'CashAR')
  String? cashAr;
  String? debitNote;
  @JsonKey(name: 'CashTotal')
  String? cashTotal;
  @JsonKey(name: 'CashAdv')
  String? cashAdv;
  @JsonKey(name: 'PendingBalance')
  String? pendingBalance;
  @JsonKey(name: 'PettyCash')
  String? pettyCash;

  SettlemetApprovalcashDetailModel({
    this.cashInv,
    this.cashAr,
    this.debitNote,
    this.cashTotal,
    this.cashAdv,
    this.pendingBalance,
    this.pettyCash,
  });

  factory SettlemetApprovalcashDetailModel.fromJson(Map<String, dynamic> json) {
    return _$SettlemetApprovalcashDetailModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SettlemetApprovalcashDetailModelToJson(this);
  }
}
