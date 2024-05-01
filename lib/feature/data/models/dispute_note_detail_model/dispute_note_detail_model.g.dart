// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispute_note_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DisputeNoteDetailModel _$DisputeNoteDetailModelFromJson(
        Map<String, dynamic> json) =>
    DisputeNoteDetailModel(
      drdId: json['drd_ID'] as String?,
      drdInvoiceBalance: json['drd_InvoiceBalance'] as String?,
      invoiceId: json['InvoiceID'] as String?,
      transTime: json['TransTime'] as String?,
      invoiceAmount: json['InvoiceAmount'] as String?,
    );

Map<String, dynamic> _$DisputeNoteDetailModelToJson(
        DisputeNoteDetailModel instance) =>
    <String, dynamic>{
      'drd_ID': instance.drdId,
      'drd_InvoiceBalance': instance.drdInvoiceBalance,
      'InvoiceID': instance.invoiceId,
      'TransTime': instance.transTime,
      'InvoiceAmount': instance.invoiceAmount,
    };
