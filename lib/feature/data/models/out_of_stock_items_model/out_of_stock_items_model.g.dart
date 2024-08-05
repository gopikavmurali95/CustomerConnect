// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'out_of_stock_items_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OutOfStockItemsModel _$OutOfStockItemsModelFromJson(
        Map<String, dynamic> json) =>
    OutOfStockItemsModel(
      prdCode: json['prd_Code'] as String?,
      prdName: json['prd_Name'] as String?,
      osiId: json['osi_ID'] as String?,
    );

Map<String, dynamic> _$OutOfStockItemsModelToJson(
        OutOfStockItemsModel instance) =>
    <String, dynamic>{
      'prd_Code': instance.prdCode,
      'prd_Name': instance.prdName,
      'osi_ID': instance.osiId,
    };
