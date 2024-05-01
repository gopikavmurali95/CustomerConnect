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
      pcdId: json['pcd_ID'] as String?,
      reason: json['Reason'] as String?,
      status: json['Status'] as String?,
      aprvdHprice: json['aprvdHprice'] as String?,
      aprvdLprice: json['aprvdLprice'] as String?,
    );

Map<String, dynamic> _$ApprovePriceChangeinModelToJson(
        ApprovePriceChangeinModel instance) =>
    <String, dynamic>{
      'PriceID': instance.priceId,
      'UserId': instance.userId,
      'pcd_ID': instance.pcdId,
      'Reason': instance.reason,
      'Status': instance.status,
      'aprvdHprice': instance.aprvdHprice,
      'aprvdLprice': instance.aprvdLprice,
    };
