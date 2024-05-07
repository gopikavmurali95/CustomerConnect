// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_service_invoice_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FieldServiceInvoiceHeaderModel _$FieldServiceInvoiceHeaderModelFromJson(
        Map<String, dynamic> json) =>
    FieldServiceInvoiceHeaderModel(
      sahId: json['sah_ID'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
      transTime: json['TransTime'] as String?,
      usrName: json['usr_Name'] as String?,
      sjhNumber: json['sjh_Number'] as String?,
      snrCode: json['snr_Code'] as String?,
      status: json['Status'] as String?,
      sahTotal: json['sah_Total'] as String?,
      sahDiscount: json['sah_Discount'] as String?,
      sahSubTotal: json['sah_SubTotal'] as String?,
      sahVat: json['sah_VAT'] as String?,
      sahGrandTotal: json['sah_GrandTotal'] as String?,
    );

Map<String, dynamic> _$FieldServiceInvoiceHeaderModelToJson(
        FieldServiceInvoiceHeaderModel instance) =>
    <String, dynamic>{
      'sah_ID': instance.sahId,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'rot_Code': instance.rotCode,
      'rot_Name': instance.rotName,
      'TransTime': instance.transTime,
      'usr_Name': instance.usrName,
      'sjh_Number': instance.sjhNumber,
      'snr_Code': instance.snrCode,
      'Status': instance.status,
      'sah_Total': instance.sahTotal,
      'sah_Discount': instance.sahDiscount,
      'sah_SubTotal': instance.sahSubTotal,
      'sah_VAT': instance.sahVat,
      'sah_GrandTotal': instance.sahGrandTotal,
    };
