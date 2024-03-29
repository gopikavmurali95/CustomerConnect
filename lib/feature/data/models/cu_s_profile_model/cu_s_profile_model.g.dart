// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cu_s_profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CuSProfileModel _$CuSProfileModelFromJson(Map<String, dynamic> json) =>
    CuSProfileModel(
      cusId: json['cus_ID'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      cusAddress: json['cus_Address'] as String?,
      cusAddressArabic: json['cus_AddressArabic'] as String?,
      cusEmail: json['cus_Email'] as String?,
      cusGeoCode: json['cus_GeoCode'] as String?,
      cusNameArabic: json['cus_NameArabic'] as String?,
      cusPhone: json['cus_Phone'] as String?,
      cusWhatsappNumber: json['cus_WhatsappNumber'] as String?,
    );

Map<String, dynamic> _$CuSProfileModelToJson(CuSProfileModel instance) =>
    <String, dynamic>{
      'cus_ID': instance.cusId,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'cus_Address': instance.cusAddress,
      'cus_AddressArabic': instance.cusAddressArabic,
      'cus_Email': instance.cusEmail,
      'cus_GeoCode': instance.cusGeoCode,
      'cus_NameArabic': instance.cusNameArabic,
      'cus_Phone': instance.cusPhone,
      'cus_WhatsappNumber': instance.cusWhatsappNumber,
    };
