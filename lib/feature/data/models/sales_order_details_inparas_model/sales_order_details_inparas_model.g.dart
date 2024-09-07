// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_order_details_inparas_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesOrderDetailsInparasModel _$SalesOrderDetailsInparasModelFromJson(
        Map<String, dynamic> json) =>
    SalesOrderDetailsInparasModel(
      orderID: json['OrderID'] as String?,
      route: json['Route'] as String?,
      cusId: json['cus_ID'] as String?,
      userId: json['UserID'] as String?,
    );

Map<String, dynamic> _$SalesOrderDetailsInparasModelToJson(
        SalesOrderDetailsInparasModel instance) =>
    <String, dynamic>{
      'UserID': instance.userId,
      'Route': instance.route,
      'cus_ID': instance.cusId,
      'OrderID': instance.orderID,
    };
