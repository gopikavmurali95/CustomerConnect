// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cus_override_approval_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CusOverrideApprovalModel _$CusOverrideApprovalModelFromJson(
        Map<String, dynamic> json) =>
    CusOverrideApprovalModel(
      ooaId: json['ooa_ID'] as String?,
      ooaCseId: json['ooa_cse_ID'] as String?,
      ooaUdpId: json['ooa_udp_ID'] as String?,
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      ooaTransId: json['ooa_TransID'] as String?,
      ooaType: json['ooa_Type'] as String?,
      totalInvAmt: json['TotalInvAmt'] as String?,
      availableCreditLimit: json['AvailableCreditLimit'] as String?,
      totalCreditLimit: json['TotalCreditLimit'] as String?,
      totalOutstanding: json['TotalOutstanding'] as String?,
      totalCreditDays: json['TotalCreditDays'] as String?,
      ooaApprovalStatus: json['ooa_ApprovalStatus'] as String?,
      createdBy: json['CreatedBy'] as String?,
      createdDate: json['CreatedDate'] as String?,
      modifiedBy: json['ModifiedBy'] as String?,
      modifiedDate: json['ModifiedDate'] as String?,
      status: json['Status'] as String?,
      ooaCurrentLevel: json['ooa_CurrentLevel'] as String?,
      ooaWfmId: json['ooa_wfm_ID'] as String?,
    );

Map<String, dynamic> _$CusOverrideApprovalModelToJson(
        CusOverrideApprovalModel instance) =>
    <String, dynamic>{
      'ooa_ID': instance.ooaId,
      'ooa_cse_ID': instance.ooaCseId,
      'ooa_udp_ID': instance.ooaUdpId,
      'rot_Code': instance.rotCode,
      'rot_Name': instance.rotName,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'ooa_TransID': instance.ooaTransId,
      'ooa_Type': instance.ooaType,
      'TotalInvAmt': instance.totalInvAmt,
      'AvailableCreditLimit': instance.availableCreditLimit,
      'TotalCreditLimit': instance.totalCreditLimit,
      'TotalOutstanding': instance.totalOutstanding,
      'TotalCreditDays': instance.totalCreditDays,
      'ooa_ApprovalStatus': instance.ooaApprovalStatus,
      'CreatedBy': instance.createdBy,
      'CreatedDate': instance.createdDate,
      'ModifiedBy': instance.modifiedBy,
      'ModifiedDate': instance.modifiedDate,
      'Status': instance.status,
      'ooa_CurrentLevel': instance.ooaCurrentLevel,
      'ooa_wfm_ID': instance.ooaWfmId,
    };
