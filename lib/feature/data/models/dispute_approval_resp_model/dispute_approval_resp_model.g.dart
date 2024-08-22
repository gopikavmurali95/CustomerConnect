// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispute_approval_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DisputeApprovalRespModel _$DisputeApprovalRespModelFromJson(
        Map<String, dynamic> json) =>
    DisputeApprovalRespModel(
      status: json['Status'] as String?,
      arstatus: json['ArStatus'] as String?,
    );

Map<String, dynamic> _$DisputeApprovalRespModelToJson(
        DisputeApprovalRespModel instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'ArStatus': instance.arstatus,
    };
