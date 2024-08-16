// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'van_to_van_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VanToVanHeaderModel _$VanToVanHeaderModelFromJson(Map<String, dynamic> json) =>
    VanToVanHeaderModel(
      vvhId: json['vvh_ID'] as String?,
      vvhTransId: json['vvh_TransID'] as String?,
      vvhFromRot: json['vvh_FromRot'] as String?,
      vvhToRot: json['vvh_ToRot'] as String?,
      status: json['Status'] as String?,
      createdDate: json['CreatedDate'] as String?,
      approvalStatus: json['Approval_Status'] as String?,
      rotID: json['rotID'] as String?,
      userID: json['UserID'] as String?,
      approvalArStatus: json['Approval_ArStatus'] as String?,
      arStatus: json['ArStatus'] as String?,
    );

Map<String, dynamic> _$VanToVanHeaderModelToJson(
        VanToVanHeaderModel instance) =>
    <String, dynamic>{
      'vvh_ID': instance.vvhId,
      'vvh_TransID': instance.vvhTransId,
      'vvh_FromRot': instance.vvhFromRot,
      'vvh_ToRot': instance.vvhToRot,
      'Status': instance.status,
      'CreatedDate': instance.createdDate,
      'Approval_Status': instance.approvalStatus,
      'UserID': instance.userID,
      'rotID': instance.rotID,
      'ArStatus': instance.arStatus,
      'Approval_ArStatus': instance.approvalArStatus,
    };
