// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_note_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreditNoteHeaderModel _$CreditNoteHeaderModelFromJson(
        Map<String, dynamic> json) =>
    CreditNoteHeaderModel(
      cnhId: json['cnh_ID'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      rotName: json['rot_Name'] as String?,
      rotCode: json['rot_Code'] as String?,
      usrName: json['usr_Name'] as String?,
      cnhNumber: json['cnh_Number'] as String?,
      createdDate: json['CreatedDate'] as String?,
      cnhAmount: json['cnh_Amount'] as String?,
      cnhSubTotal: json['cnh_SubTotal'] as String?,
      cnhVat: json['cnh_VAT'] as String?,
      cnhCreditType: json['cnh_CreditType'] as String?,
      status: json['Status'] as String?,
      rotID: json['rotID'] as String?,
      userID: json['UserID'] as String?,
    );

Map<String, dynamic> _$CreditNoteHeaderModelToJson(
        CreditNoteHeaderModel instance) =>
    <String, dynamic>{
      'cnh_ID': instance.cnhId,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'rot_Name': instance.rotName,
      'rot_Code': instance.rotCode,
      'usr_Name': instance.usrName,
      'cnh_Number': instance.cnhNumber,
      'CreatedDate': instance.createdDate,
      'cnh_Amount': instance.cnhAmount,
      'cnh_SubTotal': instance.cnhSubTotal,
      'cnh_VAT': instance.cnhVat,
      'cnh_CreditType': instance.cnhCreditType,
      'Status': instance.status,
      'UserID': instance.userID,
      'rotID': instance.rotID,
    };
