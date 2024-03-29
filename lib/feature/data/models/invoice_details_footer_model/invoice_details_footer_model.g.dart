// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_details_footer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceDetailsFooterModel _$InvoiceDetailsFooterModelFromJson(
        Map<String, dynamic> json) =>
    InvoiceDetailsFooterModel(
      type: json['Type'] as String?,
      discount: json['Discount'] as String?,
      vat: json['VAT'] as String?,
      value: json['Value'] as String?,
      subTotal: json['SubTotal'] as String?,
    );

Map<String, dynamic> _$InvoiceDetailsFooterModelToJson(
        InvoiceDetailsFooterModel instance) =>
    <String, dynamic>{
      'Type': instance.type,
      'Discount': instance.discount,
      'VAT': instance.vat,
      'Value': instance.value,
      'SubTotal': instance.subTotal,
    };
