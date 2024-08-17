// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_approval_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReturnApprovalHeaderModel _$ReturnApprovalHeaderModelFromJson(
        Map<String, dynamic> json) =>
    ReturnApprovalHeaderModel(
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      rotName: json['rot_Name'] as String?,
      rotCode: json['rot_Code'] as String?,
      ithRequestNumber: json['rrh_RequestNumber'] as String?,
      ustName: json['usr_Name'] as String?,
      rahId: json['rah_ID'] as String?,
      cshCode: json['csh_Code'] as String?,
      cshName: json['csh_Name'] as String?,
      mode: json['Mode'] as String?,
      createdDate: json['CreatedDate'] as String?,
      rahApprovalStatus: json['rah_ApprovalStatus'] as String?,
      userID: json['UserID'] as String?,
      rotID: json['rotID'] as String?,
      arStatus: json['ArStatus'] as String?,
      arcusName: json['Arcus_Name'] as String?,
      arrrhReturnType: json['Arrrh_ReturnType'] as String?,
      arrrhType: json['Arrrh_Type'] as String?,
      arusrName: json['Arusr_Name'] as String?,
    );

Map<String, dynamic> _$ReturnApprovalHeaderModelToJson(
        ReturnApprovalHeaderModel instance) =>
    <String, dynamic>{
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'rot_Name': instance.rotName,
      'rot_Code': instance.rotCode,
      'rrh_RequestNumber': instance.ithRequestNumber,
      'usr_Name': instance.ustName,
      'rah_ID': instance.rahId,
      'csh_Code': instance.cshCode,
      'csh_Name': instance.cshName,
      'Mode': instance.mode,
      'CreatedDate': instance.createdDate,
      'rah_ApprovalStatus': instance.rahApprovalStatus,
      'UserID': instance.userID,
      'rotID': instance.rotID,
      'Arcus_Name': instance.arcusName,
      'Arusr_Name': instance.arusrName,
      'Arrrh_ReturnType': instance.arrrhReturnType,
      'Arrrh_Type': instance.arrrhType,
      'ArStatus': instance.arStatus,
    };
