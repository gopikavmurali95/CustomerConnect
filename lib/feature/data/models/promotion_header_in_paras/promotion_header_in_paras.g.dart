// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_header_in_paras.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PromotionHeaderInParas _$PromotionHeaderInParasFromJson(
        Map<String, dynamic> json) =>
    PromotionHeaderInParas(
      userId: json['UserID'] as String?,
      fromDate: json['FromDate'] as String?,
      toDate: json['ToDate'] as String?,
      area: json['Area'] as String?,
      subArea: json['SubArea'] as String?,
      route: json['Route'] as String?,
      customer: json['Customer'] as String?,
      cusOutlet: json['CusOutlet'] as String?,
    );

Map<String, dynamic> _$PromotionHeaderInParasToJson(
        PromotionHeaderInParas instance) =>
    <String, dynamic>{
      'UserID': instance.userId,
      'FromDate': instance.fromDate,
      'ToDate': instance.toDate,
      'Area': instance.area,
      'SubArea': instance.subArea,
      'Route': instance.route,
      'Customer': instance.customer,
      'CusOutlet': instance.cusOutlet,
    };
