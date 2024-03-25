// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ar_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArDetailModel _$ArDetailModelFromJson(Map<String, dynamic> json) =>
    ArDetailModel(
      ardId: json['ard_ID'] as String?,
      ardArhId: json['ard_arh_ID'] as String?,
      ardAmount: json['ard_Amount'] as String?,
      ardPdcAmount: json['ard_PDC_Amount'] as String?,
      invoiceId: json['InvoiceID'] as String?,
      invoicedOn: json['InvoicedOn'] as String?,
      invoiceAmount: json['InvoiceAmount'] as String?,
      amountPaid: json['AmountPaid'] as String?,
    );

Map<String, dynamic> _$ArDetailModelToJson(ArDetailModel instance) =>
    <String, dynamic>{
      'ard_ID': instance.ardId,
      'ard_arh_ID': instance.ardArhId,
      'ard_Amount': instance.ardAmount,
      'ard_PDC_Amount': instance.ardPdcAmount,
      'InvoiceID': instance.invoiceId,
      'InvoicedOn': instance.invoicedOn,
      'InvoiceAmount': instance.invoiceAmount,
      'AmountPaid': instance.amountPaid,
    };
