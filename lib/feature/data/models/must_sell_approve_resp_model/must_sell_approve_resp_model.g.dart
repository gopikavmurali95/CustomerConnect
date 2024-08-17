// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'must_sell_approve_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MustSellApproveRespModel _$MustSellApproveRespModelFromJson(
        Map<String, dynamic> json) =>
    MustSellApproveRespModel(
      status: json['Status'] as String?,
      res: json['Res'] as String?,
      arstatus: json['ArStatus'] as String?,
    );

Map<String, dynamic> _$MustSellApproveRespModelToJson(
        MustSellApproveRespModel instance) =>
    <String, dynamic>{
      'Status': instance.status,
      'Res': instance.res,
      'ArStatus': instance.arstatus,
    };
