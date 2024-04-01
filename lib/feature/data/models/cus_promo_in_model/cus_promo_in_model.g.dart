// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cus_promo_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CusPromoInModel _$CusPromoInModelFromJson(Map<String, dynamic> json) =>
    CusPromoInModel(
      userId: json['UserID'] as String?,
      fromDate: json['FromDate'] as String?,
      toDate: json['ToDate'] as String?,
      area: json['Area'] as String?,
      subArea: json['SubArea'] as String?,
      route: json['Route'] as String?,
      cusId: json['CusID'] as String?,
    );

Map<String, dynamic> _$CusPromoInModelToJson(CusPromoInModel instance) =>
    <String, dynamic>{
      'UserID': instance.userId,
      'FromDate': instance.fromDate,
      'ToDate': instance.toDate,
      'Area': instance.area,
      'SubArea': instance.subArea,
      'Route': instance.route,
      'CusID': instance.cusId,
    };
