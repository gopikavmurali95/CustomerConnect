// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_geo_locations_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmGeoLocationsModel _$ConfirmGeoLocationsModelFromJson(
        Map<String, dynamic> json) =>
    ConfirmGeoLocationsModel(
      res: json['Res'] as String?,
      title: json['Title'] as String?,
      descr: json['Descr'] as String?,
    );

Map<String, dynamic> _$ConfirmGeoLocationsModelToJson(
        ConfirmGeoLocationsModel instance) =>
    <String, dynamic>{
      'Res': instance.res,
      'Title': instance.title,
      'Descr': instance.descr,
    };
