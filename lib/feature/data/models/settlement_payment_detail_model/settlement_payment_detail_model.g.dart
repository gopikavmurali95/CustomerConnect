// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settlement_payment_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettlementPaymentDetailModel _$SettlementPaymentDetailModelFromJson(
        Map<String, dynamic> json) =>
    SettlementPaymentDetailModel(
      cusCode: json['cus_Code'] as String?,
      name: json['name'] as String?,
      type: json['type'] as String?,
      chequeNo: json['chequeNo'] as String?,
      chequeDate: json['chequeDate'] as String?,
      bnkName: json['bnk_Name'] as String?,
      amount: json['amount'] as String?,
      arbnkName: json['Arbnk_Name'] as String?,
      arname: json['Arname'] as String?,
      artype: json['Artype'] as String?,
    );

Map<String, dynamic> _$SettlementPaymentDetailModelToJson(
        SettlementPaymentDetailModel instance) =>
    <String, dynamic>{
      'cus_Code': instance.cusCode,
      'name': instance.name,
      'type': instance.type,
      'chequeNo': instance.chequeNo,
      'chequeDate': instance.chequeDate,
      'bnk_Name': instance.bnkName,
      'amount': instance.amount,
      'Arbnk_Name': instance.arbnkName,
      'Arname': instance.arname,
      'Artype': instance.artype,
    };
