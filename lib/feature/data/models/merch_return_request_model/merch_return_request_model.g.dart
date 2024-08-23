// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merch_return_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MerchReturnRequestModel _$MerchReturnRequestModelFromJson(
        Map<String, dynamic> json) =>
    MerchReturnRequestModel(
      rrhId: json['rrh_ID'] as String?,
      rrhRequestNumber: json['rrh_RequestNumber'] as String?,
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      date: json['Date'] as String?,
      status: json['status'] as String?,
    )
      ..arcusName = json[' Arcus_Name'] as String?
      ..arStatus = json[' Arstatus'] as String?;

Map<String, dynamic> _$MerchReturnRequestModelToJson(
        MerchReturnRequestModel instance) =>
    <String, dynamic>{
      'rrh_ID': instance.rrhId,
      'rrh_RequestNumber': instance.rrhRequestNumber,
      'rot_Code': instance.rotCode,
      'rot_Name': instance.rotName,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'Date': instance.date,
      'status': instance.status,
      ' Arcus_Name': instance.arcusName,
      ' Arstatus': instance.arStatus,
    };
