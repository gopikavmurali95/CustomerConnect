// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_price_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecialPriceHeaderModel _$SpecialPriceHeaderModelFromJson(
        Map<String, dynamic> json) =>
    SpecialPriceHeaderModel(
      userId: json['UserID'] as String?,
      fromDate: json['FromDate'] as String?,
      toDate: json['ToDate'] as String?,
      area: json['Area'] as String?,
      subArea: json['SubArea'] as String?,
      route: json['Route'] as String?,
      customer: json['Customer'] as String?,
      outlet: json['Outlet'] as String?,
      mode: json['Mode'] as String?,
    );

Map<String, dynamic> _$SpecialPriceHeaderModelToJson(
        SpecialPriceHeaderModel instance) =>
    <String, dynamic>{
      'UserID': instance.userId,
      'FromDate': instance.fromDate,
      'ToDate': instance.toDate,
      'Area': instance.area,
      'SubArea': instance.subArea,
      'Route': instance.route,
      'Customer': instance.customer,
      'Outlet': instance.outlet,
      'Mode': instance.mode,
    };
