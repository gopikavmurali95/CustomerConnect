// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credit_note_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreditNoteDetailModel _$CreditNoteDetailModelFromJson(
        Map<String, dynamic> json) =>
    CreditNoteDetailModel(
      cndId: json['cnd_ID'] as String?,
      invInvoiceId: json['inv_InvoiceID'] as String?,
      transTime: json['TransTime'] as String?,
      prdName: json['prd_Name'] as String?,
      huom: json['HUOM'] as String?,
      crdHQty: json['crd_HQty'] as String?,
      luom: json['LUOM'] as String?,
      crdLQty: json['crd_LQty'] as String?,
      cndCrdAmount: json['cnd_crd_Amount'] as String?,
      status: json['Status'] as String?,
      arStatus: json['ArStatus'] as String?,
      arprdName: json['Arprd_Name'] as String?,
    );

Map<String, dynamic> _$CreditNoteDetailModelToJson(
        CreditNoteDetailModel instance) =>
    <String, dynamic>{
      'cnd_ID': instance.cndId,
      'inv_InvoiceID': instance.invInvoiceId,
      'TransTime': instance.transTime,
      'prd_Name': instance.prdName,
      'HUOM': instance.huom,
      'crd_HQty': instance.crdHQty,
      'LUOM': instance.luom,
      'crd_LQty': instance.crdLQty,
      'cnd_crd_Amount': instance.cndCrdAmount,
      'Status': instance.status,
      'Arprd_Name': instance.arprdName,
      'ArStatus': instance.arStatus,
    };
