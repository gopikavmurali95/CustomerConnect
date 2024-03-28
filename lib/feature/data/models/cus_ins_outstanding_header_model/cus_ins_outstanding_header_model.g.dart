// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cus_ins_outstanding_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CusInsOutstandingHeaderModel _$CusInsOutstandingHeaderModelFromJson(
        Map<String, dynamic> json) =>
    CusInsOutstandingHeaderModel(
      invoiceId: json['InvoiceID'] as String?,
      invoicedOn: json['InvoicedOn'] as String?,
      invoiceAmount: json['InvoiceAmount'] as String?,
      amountPaid: json['AmountPaid'] as String?,
      invoiceBalance: json['InvoiceBalance'] as String?,
      pdcAmount: json['PDC_Amount'] as String?,
      createdDate: json['CreatedDate'] as String?,
      cusId: json['cus_ID'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      cshId: json['csh_ID'] as String?,
      cshCode: json['csh_Code'] as String?,
      cshName: json['csh_Name'] as String?,
      rotId: json['rot_ID'] as String?,
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
      status: json['Status'] as String?,
      id: json['ID'] as String?,
    );

Map<String, dynamic> _$CusInsOutstandingHeaderModelToJson(
        CusInsOutstandingHeaderModel instance) =>
    <String, dynamic>{
      'InvoiceID': instance.invoiceId,
      'InvoicedOn': instance.invoicedOn,
      'InvoiceAmount': instance.invoiceAmount,
      'AmountPaid': instance.amountPaid,
      'InvoiceBalance': instance.invoiceBalance,
      'PDC_Amount': instance.pdcAmount,
      'CreatedDate': instance.createdDate,
      'cus_ID': instance.cusId,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'csh_ID': instance.cshId,
      'csh_Code': instance.cshCode,
      'csh_Name': instance.cshName,
      'rot_ID': instance.rotId,
      'rot_Code': instance.rotCode,
      'rot_Name': instance.rotName,
      'Status': instance.status,
      'ID': instance.id,
    };
