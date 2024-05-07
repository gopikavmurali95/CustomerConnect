// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'van_to_van_approval_in_paras.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VanToVanApprovalInParas _$VanToVanApprovalInParasFromJson(
        Map<String, dynamic> json) =>
    VanToVanApprovalInParas(
      vvdId: json['vvd_ID'] as String?,
      hqty: json['HQTY'] as String?,
      lqty: json['LQTY'] as String?,
      status: json['Status'] as String?,
      userID: json['UserId'] as String?,
      reqID: json['ReqID'] as String?,
    );

Map<String, dynamic> _$VanToVanApprovalInParasToJson(
        VanToVanApprovalInParas instance) =>
    <String, dynamic>{
      'vvd_ID': instance.vvdId,
      'HQTY': instance.hqty,
      'LQTY': instance.lqty,
      'Status': instance.status,
      'UserId': instance.userID,
      'ReqID': instance.reqID,
    };
