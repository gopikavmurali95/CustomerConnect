// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approve_price_changein_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApprovePriceChangeinModel _$ApprovePriceChangeinModelFromJson(
        Map<String, dynamic> json) =>
    ApprovePriceChangeinModel(
      priceId: json['PriceID'] as String?,
      userId: json['UserId'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : PriceChangePrdModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApprovePriceChangeinModelToJson(
        ApprovePriceChangeinModel instance) =>
    <String, dynamic>{
      'PriceID': instance.priceId,
      'UserId': instance.userId,
      'products': instance.products,
    };
