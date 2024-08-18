// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approval_reson_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApprovalResonModel _$ApprovalResonModelFromJson(Map<String, dynamic> json) =>
    ApprovalResonModel(
      rsnId: json['rsn_ID'] as String?,
      rsnName: json['rsn_Name'] as String?,
      rsnType: json['rsn_Type'] as String?,
      rsnArName: json['rsn_ArName'] as String?,
    );

Map<String, dynamic> _$ApprovalResonModelToJson(ApprovalResonModel instance) =>
    <String, dynamic>{
      'rsn_ID': instance.rsnId,
      'rsn_Name': instance.rsnName,
      'rsn_Type': instance.rsnType,
      'rsn_ArName': instance.rsnArName,
    };
