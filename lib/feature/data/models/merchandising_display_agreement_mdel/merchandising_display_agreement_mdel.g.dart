// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchandising_display_agreement_mdel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MerchandisingDisplayAgreementMdel _$MerchandisingDisplayAgreementMdelFromJson(
        Map<String, dynamic> json) =>
    MerchandisingDisplayAgreementMdel(
      number: json['Number'] as String?,
      type: json['Type'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      startDate: json['StartDate'] as String?,
      endDate: json['EndDate'] as String?,
      status: json['Status'] as String?,
    );

Map<String, dynamic> _$MerchandisingDisplayAgreementMdelToJson(
        MerchandisingDisplayAgreementMdel instance) =>
    <String, dynamic>{
      'Number': instance.number,
      'Type': instance.type,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'StartDate': instance.startDate,
      'EndDate': instance.endDate,
      'Status': instance.status,
    };
