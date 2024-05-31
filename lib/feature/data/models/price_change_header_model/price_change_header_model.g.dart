// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_change_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceChangeHeaderModel _$PriceChangeHeaderModelFromJson(
        Map<String, dynamic> json) =>
    PriceChangeHeaderModel(
      cusCode: json['cus_Code'] as String?,
      cusName: json['cus_Name'] as String?,
      rotName: json['rot_Name'] as String?,
      rotCode: json['rot_Code'] as String?,
      pchRotId: json['pch_rot_ID'] as String?,
      usrName: json['usr_Name'] as String?,
      pchId: json['pch_ID'] as String?,
      cshCode: json['csh_Code'] as String?,
      cshName: json['csh_Name'] as String?,
      pchReqId: json['pch_ReqID'] as String?,
      createdDate: json['CreatedDate'] as String?,
      type: json['Type'] as String?,
      pchApprovalStatus: json['pch_ApprovalStatus'] as String?,
      rotID: json['rotID'] as String?,
      userID: json['UserID'] as String?,
    );

Map<String, dynamic> _$PriceChangeHeaderModelToJson(
        PriceChangeHeaderModel instance) =>
    <String, dynamic>{
      'cus_Code': instance.cusCode,
      'cus_Name': instance.cusName,
      'rot_Name': instance.rotName,
      'rot_Code': instance.rotCode,
      'pch_rot_ID': instance.pchRotId,
      'usr_Name': instance.usrName,
      'pch_ID': instance.pchId,
      'csh_Code': instance.cshCode,
      'csh_Name': instance.cshName,
      'pch_ReqID': instance.pchReqId,
      'CreatedDate': instance.createdDate,
      'Type': instance.type,
      'pch_ApprovalStatus': instance.pchApprovalStatus,
      'UserID': instance.userID,
      'rotID': instance.rotID,
    };
