// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracking_sales_man_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrackingSalesManModel _$TrackingSalesManModelFromJson(
        Map<String, dynamic> json) =>
    TrackingSalesManModel(
      customer: json['Customer'] as String?,
      duration: json['Duration'] as String?,
      date: json['Date'] as String?,
      time: json['Time'] as String?,
      moveStatus: json['MoveStatus'] as String?,
      geocode: json['Geocode'] as String?,
      customerAr: json['CustomerAr'] as String?,
    );

Map<String, dynamic> _$TrackingSalesManModelToJson(
        TrackingSalesManModel instance) =>
    <String, dynamic>{
      'Customer': instance.customer,
      'Duration': instance.duration,
      'Date': instance.date,
      'Time': instance.time,
      'MoveStatus': instance.moveStatus,
      'Geocode': instance.geocode,
      'CustomerAr': instance.customerAr,
    };
