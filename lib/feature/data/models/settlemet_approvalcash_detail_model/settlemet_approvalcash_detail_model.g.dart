// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settlemet_approvalcash_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettlemetApprovalcashDetailModel _$SettlemetApprovalcashDetailModelFromJson(
        Map<String, dynamic> json) =>
    SettlemetApprovalcashDetailModel(
      cashInv: (json['CashInv'] as num?)?.toInt(),
      cashAr: (json['CashAR'] as num?)?.toInt(),
      debitNote: (json['debitNote'] as num?)?.toInt(),
      cashTotal: (json['CashTotal'] as num?)?.toInt(),
      cashAdv: (json['CashAdv'] as num?)?.toInt(),
      pendingBalance: (json['PendingBalance'] as num?)?.toInt(),
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
    };
