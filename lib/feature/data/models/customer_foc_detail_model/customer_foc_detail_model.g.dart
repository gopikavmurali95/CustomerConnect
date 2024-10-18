// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_foc_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerFocDetailModel _$CustomerFocDetailModelFromJson(
        Map<String, dynamic> json) =>
    CustomerFocDetailModel(
      cfaId: json['cfa_ID'] as String?,
      cfaPrdId: json['cfa_prd_ID'] as String?,
      prdCode: json['prd_Code'] as String?,
      prdName: json['prd_Name'] as String?,
      cfaTotalQty: json['cfa_TotalQty'] as String?,
      cfaBalanceQty: json['cfa_BalanceQty'] as String?,
      createdBy: json['CreatedBy'] as String?,
      modifiedBy: json['ModifiedBy'] as String?,
      modifiedDate: json['ModifiedDate'] as String?,
      createdDate: json['CreatedDate'] as String?,
      rsnName: json['rsn_Name'] as String?,
      approvalStatus: json['ApprovalStatus'] as String?,
    );

Map<String, dynamic> _$CustomerFocDetailModelToJson(
        CustomerFocDetailModel instance) =>
    <String, dynamic>{
      'cfa_ID': instance.cfaId,
      'cfa_prd_ID': instance.cfaPrdId,
      'prd_Code': instance.prdCode,
      'prd_Name': instance.prdName,
      'cfa_TotalQty': instance.cfaTotalQty,
      'cfa_BalanceQty': instance.cfaBalanceQty,
      'CreatedBy': instance.createdBy,
      'ModifiedBy': instance.modifiedBy,
      'ModifiedDate': instance.modifiedDate,
      'CreatedDate': instance.createdDate,
      'rsn_Name': instance.rsnName,
      'ApprovalStatus': instance.approvalStatus,
    };
