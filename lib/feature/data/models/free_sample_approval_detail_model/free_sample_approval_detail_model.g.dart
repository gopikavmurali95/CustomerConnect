// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'free_sample_approval_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FreeSampleApprovalDetailModel _$FreeSampleApprovalDetailModelFromJson(
        Map<String, dynamic> json) =>
    FreeSampleApprovalDetailModel(
      fsaId: json['fsa_ID'] as String?,
      fsaPrdId: json['fsa_prd_ID'] as String?,
      prdCode: json['prd_Code'] as String?,
      prdName: json['prd_Name'] as String?,
      higherQty: json['HigherQty'] as String?,
      higherUom: json['HigherUOM'] as String?,
      lowerQty: json['LowerQty'] as String?,
      lowerUom: json['LowerUOM'] as String?,
      approvalStatus: json['ApprovalStatus'] as String?,
      createdBy: json['CreatedBy'] as String?,
      createdDate: json['CreatedDate'] as String?,
      modifiedBy: json['ModifiedBy'] as String?,
      modifiedDate: json['ModifiedDate'] as String?,
    );

Map<String, dynamic> _$FreeSampleApprovalDetailModelToJson(
        FreeSampleApprovalDetailModel instance) =>
    <String, dynamic>{
      'fsa_ID': instance.fsaId,
      'fsa_prd_ID': instance.fsaPrdId,
      'prd_Code': instance.prdCode,
      'prd_Name': instance.prdName,
      'HigherQty': instance.higherQty,
      'HigherUOM': instance.higherUom,
      'LowerQty': instance.lowerQty,
      'LowerUOM': instance.lowerUom,
      'ApprovalStatus': instance.approvalStatus,
      'CreatedBy': instance.createdBy,
      'CreatedDate': instance.createdDate,
      'ModifiedBy': instance.modifiedBy,
      'ModifiedDate': instance.modifiedDate,
    };
