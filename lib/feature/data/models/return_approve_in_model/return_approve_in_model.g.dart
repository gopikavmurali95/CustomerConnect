// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_approve_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReturnApproveInModel _$ReturnApproveInModelFromJson(
        Map<String, dynamic> json) =>
    ReturnApproveInModel(
      radId: json['rad_ID'] as String?,
      reason: json['Reason'] as String?,
      status: json['Status'] as String?,
      userID: json['UserId'] as String?,
      returnID: json['ReturnID'] as String?,
    );

Map<String, dynamic> _$ReturnApproveInModelToJson(
        ReturnApproveInModel instance) =>
    <String, dynamic>{
      'rad_ID': instance.radId,
      'Reason': instance.reason,
      'Status': instance.status,
      'UserId': instance.userID,
      'ReturnID': instance.returnID,
    };
