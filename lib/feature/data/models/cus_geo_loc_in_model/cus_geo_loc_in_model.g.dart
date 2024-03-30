// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cus_geo_loc_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CusGeoLocInModel _$CusGeoLocInModelFromJson(Map<String, dynamic> json) =>
    CusGeoLocInModel(
      userId: json['UserID'] as String?,
      fromDate: json['FromDate'] as String?,
      toDate: json['ToDate'] as String?,
      area: json['Area'] as String?,
      subArea: json['SubArea'] as String?,
      route: json['Route'] as String?,
      cusId: json['cus_ID'] as String?,
    );

Map<String, dynamic> _$CusGeoLocInModelToJson(CusGeoLocInModel instance) =>
    <String, dynamic>{
      'UserID': instance.userId,
      'FromDate': instance.fromDate,
      'ToDate': instance.toDate,
      'Area': instance.area,
      'SubArea': instance.subArea,
      'Route': instance.route,
      'cus_ID': instance.cusId,
    };
