// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merch_credit_note_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MerchCreditNoteRequestModel _$MerchCreditNoteRequestModelFromJson(
        Map<String, dynamic> json) =>
    MerchCreditNoteRequestModel(
      cnhId: json['cnh_ID'] as String?,
      cnhNumber: json['cnh_Number'] as String?,
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      date: json['Date'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$MerchCreditNoteRequestModelToJson(
        MerchCreditNoteRequestModel instance) =>
    <String, dynamic>{
      'cnh_ID': instance.cnhId,
      'cnh_Number': instance.cnhNumber,
      'rot_Code': instance.rotCode,
      'rot_Name': instance.rotName,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'Date': instance.date,
      'status': instance.status,
    };
