// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_order_details_inparas_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesOrderDetailsInparasModel _$SalesOrderDetailsInparasModelFromJson(
        Map<String, dynamic> json) =>
    SalesOrderDetailsInparasModel(
      userId: json['UserID'] as String?,
      fromDate: json['FromDate'] as String?,
      toDate: json['ToDate'] as String?,
      area: json['Area'] as String?,
      subArea: json['SubArea'] as String?,
      route: json['Route'] as String?,
      cusId: json['cus_ID'] as String?,
    );

Map<String, dynamic> _$SalesOrderDetailsInparasModelToJson(
        SalesOrderDetailsInparasModel instance) =>
    <String, dynamic>{
      'UserID': instance.userId,
      'FromDate': instance.fromDate,
      'ToDate': instance.toDate,
      'Area': instance.area,
      'SubArea': instance.subArea,
      'Route': instance.route,
      'cus_ID': instance.cusId,
    };
