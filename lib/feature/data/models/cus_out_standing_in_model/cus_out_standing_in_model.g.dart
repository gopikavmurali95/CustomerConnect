// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cus_out_standing_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CusOutStandingInModel _$CusOutStandingInModelFromJson(
        Map<String, dynamic> json) =>
    CusOutStandingInModel(
      userId: json['UserID'] as String?,
      fromDate: json['FromDate'] as String?,
      toDate: json['ToDate'] as String?,
      area: json['Area'] as String?,
      subArea: json['SubArea'] as String?,
      route: json['Route'] as String?,
      cusId: json['cus_ID'] as String?,
    );

Map<String, dynamic> _$CusOutStandingInModelToJson(
        CusOutStandingInModel instance) =>
    <String, dynamic>{
      'UserID': instance.userId,
      'FromDate': instance.fromDate,
      'ToDate': instance.toDate,
      'Area': instance.area,
      'SubArea': instance.subArea,
      'Route': instance.route,
      'cus_ID': instance.cusId,
    };
