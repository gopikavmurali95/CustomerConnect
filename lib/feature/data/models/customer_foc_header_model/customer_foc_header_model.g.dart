// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_foc_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerFocHeaderModel _$CustomerFocHeaderModelFromJson(
        Map<String, dynamic> json) =>
    CustomerFocHeaderModel(
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      rotName: json['rot_Name'] as String?,
      rotCode: json['rot_Code'] as String?,
      usrName: json['usr_Name'] as String?,
      cfhId: json['cfh_ID'] as String?,
      cfhRtnId: json['cfh_RtnId'] as String?,
      createdDate: json['CreatedDate'] as String?,
      createdBy: json['CreatedBy'] as String?,
      approvalStatus: json['ApprovalStatus'] as String?,
      modifiedDate: json['ModifiedDate'] as String?,
      modifiedBy: json['ModifiedBy'] as String?,
      rsnName: json['rsn_Name'] as String?,
    );

Map<String, dynamic> _$CustomerFocHeaderModelToJson(
        CustomerFocHeaderModel instance) =>
    <String, dynamic>{
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'rot_Name': instance.rotName,
      'rot_Code': instance.rotCode,
      'usr_Name': instance.usrName,
      'cfh_ID': instance.cfhId,
      'cfh_RtnId': instance.cfhRtnId,
      'CreatedDate': instance.createdDate,
      'CreatedBy': instance.createdBy,
      'ApprovalStatus': instance.approvalStatus,
      'ModifiedDate': instance.modifiedDate,
      'ModifiedBy': instance.modifiedBy,
      'rsn_Name': instance.rsnName,
    };
