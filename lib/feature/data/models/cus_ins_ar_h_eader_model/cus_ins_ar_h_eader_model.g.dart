// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cus_ins_ar_h_eader_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CusInsArHEaderModel _$CusInsArHEaderModelFromJson(Map<String, dynamic> json) =>
    CusInsArHEaderModel(
      arhId: json['arh_ID'] as String?,
      arhArNumber: json['arh_ARNumber'] as String?,
      cusId: json['cus_ID'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      cshId: json['csh_ID'] as String?,
      cshCode: json['csh_Code'] as String?,
      cshName: json['csh_Name'] as String?,
      date: json['Date'] as String?,
      time: json['Time'] as String?,
      rotId: json['rot_ID'] as String?,
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
      payMode: json['PayMode'] as String?,
      payType: json['PayType'] as String?,
      collectedAmount: json['CollectedAmount'] as String?,
      balanceAmount: json['BalanceAmount'] as String?,
      chequeNo: json['ChequeNo'] as String?,
      chequeDate: json['ChequeDate'] as String?,
      arpImage1: json['arp_Image1'] as String?,
      bankName: json['bank_Name'] as String?,
      arBankName: json['Arbank_Name'] as String?,
      arCshName: json['Arcsh_Name'] as String?,
      arPayMode: json['ArPayMode'] as String?,
      arcusName: json['Arcus_Name'] as String?,
    );

Map<String, dynamic> _$CusInsArHEaderModelToJson(
        CusInsArHEaderModel instance) =>
    <String, dynamic>{
      'arh_ID': instance.arhId,
      'arh_ARNumber': instance.arhArNumber,
      'cus_ID': instance.cusId,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'csh_ID': instance.cshId,
      'csh_Code': instance.cshCode,
      'csh_Name': instance.cshName,
      'Date': instance.date,
      'Time': instance.time,
      'rot_ID': instance.rotId,
      'rot_Code': instance.rotCode,
      'rot_Name': instance.rotName,
      'PayMode': instance.payMode,
      'PayType': instance.payType,
      'CollectedAmount': instance.collectedAmount,
      'BalanceAmount': instance.balanceAmount,
      'ChequeNo': instance.chequeNo,
      'ChequeDate': instance.chequeDate,
      'arp_Image1': instance.arpImage1,
      'bank_Name': instance.bankName,
      'Arcus_Name': instance.arcusName,
      'ArPayMode': instance.arPayMode,
      'Arbank_Name': instance.arBankName,
      'Arcsh_Name': instance.arCshName,
    };
