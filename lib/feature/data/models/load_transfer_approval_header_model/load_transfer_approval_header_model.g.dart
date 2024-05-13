// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_transfer_approval_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoadTransferApprovalHeaderModel _$LoadTransferApprovalHeaderModelFromJson(
        Map<String, dynamic> json) =>
    LoadTransferApprovalHeaderModel(
      ltrId: json['ltr_ID'] as String?,
      ltrReqNo: json['ltr_reqNo'] as String?,
      ltrUsrId: json['ltr_usr_ID'] as String?,
      usrName: json['usr_Name'] as String?,
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
      createdDate: json['CreatedDate'] as String?,
      ltrRotId: json['ltr_rot_ID'] as String?,
      ltrType: json['ltr_Type'] as String?,
      ltrRemarks: json['ltr_Remarks'] as String?,
      ltrApprovalStatus: json['ltr_ApprovalStatus'] as String?,
    );

Map<String, dynamic> _$LoadTransferApprovalHeaderModelToJson(
        LoadTransferApprovalHeaderModel instance) =>
    <String, dynamic>{
      'ltr_ID': instance.ltrId,
      'ltr_reqNo': instance.ltrReqNo,
      'ltr_usr_ID': instance.ltrUsrId,
      'usr_Name': instance.usrName,
      'rot_Code': instance.rotCode,
      'rot_Name': instance.rotName,
      'CreatedDate': instance.createdDate,
      'ltr_rot_ID': instance.ltrRotId,
      'ltr_Type': instance.ltrType,
      'ltr_Remarks': instance.ltrRemarks,
      'ltr_ApprovalStatus': instance.ltrApprovalStatus,
    };
