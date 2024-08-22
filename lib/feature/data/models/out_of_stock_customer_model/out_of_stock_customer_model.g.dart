// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'out_of_stock_customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OutOfStockCustomerModel _$OutOfStockCustomerModelFromJson(
        Map<String, dynamic> json) =>
    OutOfStockCustomerModel(
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      cusId: json['cus_ID'] as String?,
      prodCount: json['ProdCount'] as String?,
    )..cusArName = json['cus_ArName'] as String?;

Map<String, dynamic> _$OutOfStockCustomerModelToJson(
        OutOfStockCustomerModel instance) =>
    <String, dynamic>{
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'cus_ID': instance.cusId,
      'ProdCount': instance.prodCount,
      'cus_ArName': instance.cusArName,
    };
