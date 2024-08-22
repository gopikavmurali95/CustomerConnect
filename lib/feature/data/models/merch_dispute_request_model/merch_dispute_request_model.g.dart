// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merch_dispute_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MerchDisputeRequestModel _$MerchDisputeRequestModelFromJson(
        Map<String, dynamic> json) =>
    MerchDisputeRequestModel(
      drhId: json['drh_ID'] as String?,
      drhTransId: json['drh_TransID'] as String?,
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      date: json['Date'] as String?,
      status: json['status'] as String?,
    )
      ..arcusName = json['Arcus_Name'] as String?
      ..arstatus = json['Arstatus'] as String?;

Map<String, dynamic> _$MerchDisputeRequestModelToJson(
        MerchDisputeRequestModel instance) =>
    <String, dynamic>{
      'drh_ID': instance.drhId,
      'drh_TransID': instance.drhTransId,
      'rot_Code': instance.rotCode,
      'rot_Name': instance.rotName,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'Date': instance.date,
      'status': instance.status,
      'Arcus_Name': instance.arcusName,
      'Arstatus': instance.arstatus,
    };
