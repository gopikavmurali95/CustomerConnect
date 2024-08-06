// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'out_of_stock_items_customers_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OutOfStockItemsCustomersModel _$OutOfStockItemsCustomersModelFromJson(
        Map<String, dynamic> json) =>
    OutOfStockItemsCustomersModel(
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
    );

Map<String, dynamic> _$OutOfStockItemsCustomersModelToJson(
        OutOfStockItemsCustomersModel instance) =>
    <String, dynamic>{
      'rot_Code': instance.rotCode,
      'rot_Name': instance.rotName,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
    };
