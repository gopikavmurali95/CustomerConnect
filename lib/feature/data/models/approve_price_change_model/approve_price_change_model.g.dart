// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approve_price_change_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApprovePriceChangeModel _$ApprovePriceChangeModelFromJson(
        Map<String, dynamic> json) =>
    ApprovePriceChangeModel(
      mode: json['Mode'] as String?,
      status: json['Status'] as String?,
      transId: json['TransID'] as String?,
    );

Map<String, dynamic> _$ApprovePriceChangeModelToJson(
        ApprovePriceChangeModel instance) =>
    <String, dynamic>{
      'Mode': instance.mode,
      'Status': instance.status,
      'TransID': instance.transId,
    };
