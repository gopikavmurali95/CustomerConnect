// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceDetailsModel _$InvoiceDetailsModelFromJson(Map<String, dynamic> json) =>
    InvoiceDetailsModel(
      prdId: json['prd_ID'] as String?,
      prdCode: json['prd_Code'] as String?,
      prdName: json['prd_Name'] as String?,
      prdType: json['prd_Type'] as String?,
      lowerUom: json['LowerUOM'] as String?,
      higherUom: json['HigherUOM'] as String?,
      lowerQty: json['LowerQty'] as String?,
      higherQty: json['HigherQty'] as String?,
      amount: json['Amount'] as String?,
    );

Map<String, dynamic> _$InvoiceDetailsModelToJson(
        InvoiceDetailsModel instance) =>
    <String, dynamic>{
      'prd_ID': instance.prdId,
      'prd_Code': instance.prdCode,
      'prd_Name': instance.prdName,
      'prd_Type': instance.prdType,
      'LowerUOM': instance.lowerUom,
      'HigherUOM': instance.higherUom,
      'LowerQty': instance.lowerQty,
      'HigherQty': instance.higherQty,
      'Amount': instance.amount,
    };
