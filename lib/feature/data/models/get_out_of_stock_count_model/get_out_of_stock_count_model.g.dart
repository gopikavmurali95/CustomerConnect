// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_out_of_stock_count_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOutOfStockCountModel _$GetOutOfStockCountModelFromJson(
        Map<String, dynamic> json) =>
    GetOutOfStockCountModel(
      itemCount: (json['ItemCount'] as num?)?.toInt(),
      cusCount: (json['CusCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetOutOfStockCountModelToJson(
        GetOutOfStockCountModel instance) =>
    <String, dynamic>{
      'ItemCount': instance.itemCount,
      'CusCount': instance.cusCount,
    };
