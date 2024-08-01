// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settelemet_approval_reject.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SettelemetApprovalReject _$SettelemetApprovalRejectFromJson(
        Map<String, dynamic> json) =>
    SettelemetApprovalReject(
      status: json['status'] as String?,
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SettelemetApprovalRejectToJson(
        SettelemetApprovalReject instance) =>
    <String, dynamic>{
      'status': instance.status,
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
