// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_live_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerLiveLocationModel _$CustomerLiveLocationModelFromJson(
        Map<String, dynamic> json) =>
    CustomerLiveLocationModel(
      user: json['User'] as String?,
      duration: json['Duration'] as String?,
      date: json['Date'] as String?,
      time: json['Time'] as String?,
      geocode: json['Geocode'] as String?,
      userAr: json['UserAr'] as String?,
    );

Map<String, dynamic> _$CustomerLiveLocationModelToJson(
        CustomerLiveLocationModel instance) =>
    <String, dynamic>{
      'User': instance.user,
      'Duration': instance.duration,
      'Date': instance.date,
      'Time': instance.time,
      'Geocode': instance.geocode,
      'UserAr': instance.userAr,
    };
