// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'un_scheduled_approval_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnScheduledApprovalHeaderModel _$UnScheduledApprovalHeaderModelFromJson(
        Map<String, dynamic> json) =>
    UnScheduledApprovalHeaderModel(
      uvaId: json['uva_ID'] as String?,
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
      rotType: json['rot_Type'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      createdDate: json['CreatedDate'] as String?,
      status: json['Status'] as String?,
      rotArName: json['rot_ArName'] as String?,
      cusArName: json['cus_ArName'] as String?,
    );

Map<String, dynamic> _$UnScheduledApprovalHeaderModelToJson(
        UnScheduledApprovalHeaderModel instance) =>
    <String, dynamic>{
      'uva_ID': instance.uvaId,
      'rot_Code': instance.rotCode,
      'rot_Name': instance.rotName,
      'rot_Type': instance.rotType,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'CreatedDate': instance.createdDate,
      'Status': instance.status,
      'rot_ArName': instance.rotArName,
      'cus_ArName': instance.cusArName,
    };
