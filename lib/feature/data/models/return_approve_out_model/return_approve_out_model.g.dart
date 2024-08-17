// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_approve_out_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReturnApproveOutModel _$ReturnApproveOutModelFromJson(
        Map<String, dynamic> json) =>
    ReturnApproveOutModel(
      mode: json['Mode'] as String?,
      status: json['Status'] as String?,
      transId: json['TransID'] as String?,
      arStatus: json['ArStatus'] as String?,
    );

Map<String, dynamic> _$ReturnApproveOutModelToJson(
        ReturnApproveOutModel instance) =>
    <String, dynamic>{
      'Mode': instance.mode,
      'Status': instance.status,
      'TransID': instance.transId,
      'ArStatus': instance.arStatus,
    };
