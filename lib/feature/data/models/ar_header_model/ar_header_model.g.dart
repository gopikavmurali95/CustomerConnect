// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ar_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArHeaderModel _$ArHeaderModelFromJson(Map<String, dynamic> json) =>
    ArHeaderModel(
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
      arhPayMode: json['arh_PayMode'] as String?,
      arhPayType: json['arh_PayType'] as String?,
      arhCollectedAmount: json['arh_CollectedAmount'] as String?,
      arhBalanceAmount: json['arh_BalanceAmount'] as String?,
      arpChequeNo: json['arp_ChequeNo'] as String?,
      arpChequeDate: json['arp_ChequeDate'] as String?,
      image: json['Image'] as String?,
      bankName: json['bankName'] as String?,
    );

Map<String, dynamic> _$ArHeaderModelToJson(ArHeaderModel instance) =>
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
      'arh_PayMode': instance.arhPayMode,
      'arh_PayType': instance.arhPayType,
      'arh_CollectedAmount': instance.arhCollectedAmount,
      'arh_BalanceAmount': instance.arhBalanceAmount,
      'arp_ChequeNo': instance.arpChequeNo,
      'arp_ChequeDate': instance.arpChequeDate,
      'Image': instance.image,
      'bankName': instance.bankName,
    };
