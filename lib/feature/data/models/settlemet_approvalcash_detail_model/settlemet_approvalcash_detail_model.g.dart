// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settlemet_approvalcash_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettlemetApprovalcashDetailModel _$SettlemetApprovalcashDetailModelFromJson(
        Map<String, dynamic> json) =>
    SettlemetApprovalcashDetailModel(
      cashInv: json['CashInv'] as String?,
      cashAr: json['CashAR'] as String?,
      debitNote: json['debitNote'] as String?,
      cashTotal: json['CashTotal'] as String?,
      cashAdv: json['CashAdv'] as String?,
      pendingBalance: json['PendingBalance'] as String?,
      pettyCash: json['PettyCash'] as String?,
    );

Map<String, dynamic> _$SettlemetApprovalcashDetailModelToJson(
        SettlemetApprovalcashDetailModel instance) =>
    <String, dynamic>{
      'CashInv': instance.cashInv,
      'CashAR': instance.cashAr,
      'debitNote': instance.debitNote,
      'CashTotal': instance.cashTotal,
      'CashAdv': instance.cashAdv,
      'PendingBalance': instance.pendingBalance,
      'PettyCash': instance.pettyCash,
    };
