// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cus_geo_location_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CusGeoLocationModel _$CusGeoLocationModelFromJson(Map<String, dynamic> json) =>
    CusGeoLocationModel(
      cglId: json['cgl_ID'] as String?,
      cglCusGeoLoc: json['cgl_CusGeoLoc'] as String?,
      usrName: json['usr_Name'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusGeoCode: json['cus_GeoCode'] as String?,
      cusName: json['cus_Name'] as String?,
      cusId: json['cus_ID'] as String?,
      createdDate: json['CreatedDate'] as String?,
      rotName: json['rot_Name'] as String?,
      rotCode: json['rot_Code'] as String?,
      usrCode: json['usr_Code'] as String?,
      geolocurl: json['geolocurl'] as String?,
      status: json['Status'] as String?,
      usrArName: json['usr_ArName'] as String?,
      cusArName: json['cus_ArName'] as String?,
    );

Map<String, dynamic> _$CusGeoLocationModelToJson(
        CusGeoLocationModel instance) =>
    <String, dynamic>{
      'cgl_ID': instance.cglId,
      'cgl_CusGeoLoc': instance.cglCusGeoLoc,
      'usr_Name': instance.usrName,
      'cus_Code': instance.cusCode,
      'cus_GeoCode': instance.cusGeoCode,
      'cus_Name': instance.cusName,
      'cus_ID': instance.cusId,
      'CreatedDate': instance.createdDate,
      'rot_Name': instance.rotName,
      'rot_Code': instance.rotCode,
      'usr_Code': instance.usrCode,
      'geolocurl': instance.geolocurl,
      'Status': instance.status,
      'usr_ArName': instance.usrArName,
      'cus_ArName': instance.cusArName,
    };
