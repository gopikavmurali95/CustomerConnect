// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dispute_note_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DisputeNoteHeaderModel _$DisputeNoteHeaderModelFromJson(
        Map<String, dynamic> json) =>
    DisputeNoteHeaderModel(
      drhId: json['drh_ID'] as String?,
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      rotName: json['rot_Name'] as String?,
      rotCode: json['rot_Code'] as String?,
      drhRotId: json['drh_rot_ID'] as String?,
      drhTransId: json['drh_TransID'] as String?,
      usrName: json['usr_Name'] as String?,
      drhAmount: json['drh_Amount'] as String?,
      drhDisputeType: json['drh_DisputeType'] as String?,
      transTime: json['TransTime'] as String?,
      drhOtherInfo: json['drh_OtherInfo'] as String?,
      disputeType: json['DisputeType'] as String?,
      drhRemarks: json['drh_Remarks'] as String?,
      status: json['Status'] as String?,
      image: json['Image'] as String?,
      rotID: json['rotID'] as String?,
      userID: json['UserID'] as String?,
    );

Map<String, dynamic> _$DisputeNoteHeaderModelToJson(
        DisputeNoteHeaderModel instance) =>
    <String, dynamic>{
      'drh_ID': instance.drhId,
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'rot_Name': instance.rotName,
      'rot_Code': instance.rotCode,
      'drh_rot_ID': instance.drhRotId,
      'drh_TransID': instance.drhTransId,
      'usr_Name': instance.usrName,
      'drh_Amount': instance.drhAmount,
      'drh_DisputeType': instance.drhDisputeType,
      'TransTime': instance.transTime,
      'drh_OtherInfo': instance.drhOtherInfo,
      'DisputeType': instance.disputeType,
      'drh_Remarks': instance.drhRemarks,
      'Status': instance.status,
      'Image': instance.image,
      'UserID': instance.userID,
      'rotID': instance.rotID,
    };
