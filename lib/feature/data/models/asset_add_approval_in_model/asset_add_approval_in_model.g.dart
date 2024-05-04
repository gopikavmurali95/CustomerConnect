// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asset_add_approval_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssetAddApprovalInModel _$AssetAddApprovalInModelFromJson(
        Map<String, dynamic> json) =>
    AssetAddApprovalInModel(
      reqId: json['ReqID'] as String?,
      userId: json['UserID'] as String?,
      serialNum: json['SerialNum'] as String?,
    );

Map<String, dynamic> _$AssetAddApprovalInModelToJson(
        AssetAddApprovalInModel instance) =>
    <String, dynamic>{
      'ReqID': instance.reqId,
      'UserID': instance.userId,
      'SerialNum': instance.serialNum,
    };
