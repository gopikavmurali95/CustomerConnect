// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_transaction_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerTransactionModel _$CustomerTransactionModelFromJson(
        Map<String, dynamic> json) =>
    CustomerTransactionModel(
      cusTrnInvoice: json['CusTrnInvoice'] as String?,
      cusTrnArCollection: json['CusTrnARCollection'] as String?,
      invoiceAmount: json['InvoiceAmount'] as String?,
      arAmount: json['ARAmount'] as String?,
    );

Map<String, dynamic> _$CustomerTransactionModelToJson(
        CustomerTransactionModel instance) =>
    <String, dynamic>{
      'CusTrnInvoice': instance.cusTrnInvoice,
      'CusTrnARCollection': instance.cusTrnArCollection,
      'InvoiceAmount': instance.invoiceAmount,
      'ARAmount': instance.arAmount,
    };
