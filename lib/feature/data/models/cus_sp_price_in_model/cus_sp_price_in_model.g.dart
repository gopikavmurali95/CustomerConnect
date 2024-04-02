// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cus_sp_price_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CusSpPriceInModel _$CusSpPriceInModelFromJson(Map<String, dynamic> json) =>
    CusSpPriceInModel(
      userId: json['UserID'] as String?,
      fromDate: json['FromDate'] as String?,
      toDate: json['ToDate'] as String?,
      cusId: json['CusID'] as String?,
      route: json['Route'] as String?,
      area: json['Area'] as String?,
      subArea: json['SubArea'] as String?,
    );

Map<String, dynamic> _$CusSpPriceInModelToJson(CusSpPriceInModel instance) =>
    <String, dynamic>{
      'UserID': instance.userId,
      'FromDate': instance.fromDate,
      'ToDate': instance.toDate,
      'CusID': instance.cusId,
      'Route': instance.route,
      'Area': instance.area,
      'SubArea': instance.subArea,
    };
