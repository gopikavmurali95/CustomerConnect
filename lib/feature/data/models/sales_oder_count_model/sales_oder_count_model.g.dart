// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_oder_count_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesOderCountModel _$SalesOderCountModelFromJson(Map<String, dynamic> json) =>
    SalesOderCountModel(
      totalOrders: json['TotalOrders'] as String?,
      todayDel: json['TodayDel'] as String?,
      todayDelTot: json['TodayDelTot'] as String?,
      totalOrdersAmount: json['TotalOrdersAmount'] as String?,
      todayDelAmount: json['TodayDelAmount'] as String?,
    );

Map<String, dynamic> _$SalesOderCountModelToJson(
        SalesOderCountModel instance) =>
    <String, dynamic>{
      'TotalOrders': instance.totalOrders,
      'TodayDel': instance.todayDel,
      'TodayDelTot': instance.todayDelTot,
      'TotalOrdersAmount': instance.totalOrdersAmount,
      'TodayDelAmount': instance.todayDelAmount,
    };
