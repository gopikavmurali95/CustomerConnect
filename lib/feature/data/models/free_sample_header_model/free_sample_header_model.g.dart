// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'free_sample_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FreeSampleHeaderModel _$FreeSampleHeaderModelFromJson(
        Map<String, dynamic> json) =>
    FreeSampleHeaderModel(
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      rotName: json['rot_Name'] as String?,
      rotCode: json['rot_Code'] as String?,
      usrName: json['usr_Name'] as String?,
      fshId: json['fsh_ID'] as String?,
      fshReqId: json['fshReqID'] as String?,
      createdBy: json['CreatedBy'] as String?,
      createdDate: json['CreatedDate'] as String?,
      modifiedBy: json['ModifiedBy'] as String?,
      modifiedDate: json['ModifiedDate'] as String?,
      approvalStatus: json['ApprovalStatus'] as String?,
    );

Map<String, dynamic> _$FreeSampleHeaderModelToJson(
        FreeSampleHeaderModel instance) =>
    <String, dynamic>{
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'rot_Name': instance.rotName,
      'rot_Code': instance.rotCode,
      'usr_Name': instance.usrName,
      'fsh_ID': instance.fshId,
      'fshReqID': instance.fshReqId,
      'CreatedBy': instance.createdBy,
      'CreatedDate': instance.createdDate,
      'ModifiedBy': instance.modifiedBy,
      'ModifiedDate': instance.modifiedDate,
      'ApprovalStatus': instance.approvalStatus,
    };
