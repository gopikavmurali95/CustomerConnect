// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total_orders_inparas.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TotalOrdersInparas _$TotalOrdersInparasFromJson(Map<String, dynamic> json) =>
    TotalOrdersInparas(
      userId: json['UserID'] as String?,
      fromDate: json['FromDate'] as String?,
      toDate: json['ToDate'] as String?,
      area: json['Area'] as String?,
      subArea: json['SubArea'] as String?,
      route: json['Route'] as String?,
      customer: json['Customer'] as String?,
      outlet: json['Outlet'] as String?,
    );

Map<String, dynamic> _$TotalOrdersInparasToJson(TotalOrdersInparas instance) =>
    <String, dynamic>{
      'UserID': instance.userId,
      'FromDate': instance.fromDate,
      'ToDate': instance.toDate,
      'Area': instance.area,
      'SubArea': instance.subArea,
      'Route': instance.route,
      'Customer': instance.customer,
      'Outlet': instance.outlet,
    };
