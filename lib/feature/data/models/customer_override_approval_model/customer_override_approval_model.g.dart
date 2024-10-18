// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_override_approval_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerOverrideApprovalModel _$CustomerOverrideApprovalModelFromJson(
        Map<String, dynamic> json) =>
    CustomerOverrideApprovalModel(
      ooaId: json['ooa_ID'] as String?,
      ooaCseId: json['ooa_cse_ID'] as String?,
      ooaUdpId: json['ooa_udp_ID'] as String?,
      ooaRotId: json['ooa_rot_ID'] as String?,
      ooaCusId: json['ooa_cus_ID'] as String?,
      ooaTransId: json['ooa_TransID'] as String?,
      ooaType: json['ooa_Type'] as String?,
      flexiField1: json['FlexiField1'] as String?,
      flexiField2: json['FlexiField2'] as String?,
      flexiField3: json['FlexiField3'] as String?,
      flexiField4: json['FlexiField4'] as String?,
      ooaApprovalStatus: json['ooa_ApprovalStatus'] as String?,
      createdBy: json['CreatedBy'] as String?,
      createdDate: json['CreatedDate'] as String?,
      modifiedBy: json['ModifiedBy'] as String?,
      modifiedDate: json['ModifiedDate'] as String?,
      status: json['Status'] as String?,
      ooaCurrentLevel: json['ooa_CurrentLevel'] as String?,
      ooaWfmId: json['ooa_wfm_ID'] as String?,
    );

Map<String, dynamic> _$CustomerOverrideApprovalModelToJson(
        CustomerOverrideApprovalModel instance) =>
    <String, dynamic>{
      'ooa_ID': instance.ooaId,
      'ooa_cse_ID': instance.ooaCseId,
      'ooa_udp_ID': instance.ooaUdpId,
      'ooa_rot_ID': instance.ooaRotId,
      'ooa_cus_ID': instance.ooaCusId,
      'ooa_TransID': instance.ooaTransId,
      'ooa_Type': instance.ooaType,
      'FlexiField1': instance.flexiField1,
      'FlexiField2': instance.flexiField2,
      'FlexiField3': instance.flexiField3,
      'FlexiField4': instance.flexiField4,
      'ooa_ApprovalStatus': instance.ooaApprovalStatus,
      'CreatedBy': instance.createdBy,
      'CreatedDate': instance.createdDate,
      'ModifiedBy': instance.modifiedBy,
      'ModifiedDate': instance.modifiedDate,
      'Status': instance.status,
      'ooa_CurrentLevel': instance.ooaCurrentLevel,
      'ooa_wfm_ID': instance.ooaWfmId,
    };
