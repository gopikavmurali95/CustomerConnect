// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'special_price_customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecialPriceCustomerModel _$SpecialPriceCustomerModelFromJson(
        Map<String, dynamic> json) =>
    SpecialPriceCustomerModel(
      cusId: json['CusID'] as String?,
      cusCode: json['CusCode'] as String?,
      cusName: json['CusName'] as String?,
    )..arcusName = json['ArCusName'] as String?;

Map<String, dynamic> _$SpecialPriceCustomerModelToJson(
        SpecialPriceCustomerModel instance) =>
    <String, dynamic>{
      'CusID': instance.cusId,
      'CusCode': instance.cusCode,
      'CusName': instance.cusName,
      'ArCusName': instance.arcusName,
    };
