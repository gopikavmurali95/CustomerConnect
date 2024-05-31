// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matrial_apr_req_prd_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatrialAprReqPrdModel _$MatrialAprReqPrdModelFromJson(
        Map<String, dynamic> json) =>
    MatrialAprReqPrdModel(
      mrdId: json['mrd_ID'] as String?,
      prdId: json['prd_ID'] as String?,
      reqHuom: json['ReqHUOM'] as String?,
      reqLuom: json['ReqLUOM'] as String?,
      requestedHQty: json['RequestedHQty'] as String?,
      requestedLQty: json['RequestedLQty'] as String?,
      hqty: json['HQTY'] as String?,
      lqty: json['LQTY'] as String?,
    );

Map<String, dynamic> _$MatrialAprReqPrdModelToJson(
        MatrialAprReqPrdModel instance) =>
    <String, dynamic>{
      'mrd_ID': instance.mrdId,
      'prd_ID': instance.prdId,
      'ReqHUOM': instance.reqHuom,
      'ReqLUOM': instance.reqLuom,
      'RequestedHQty': instance.requestedHQty,
      'RequestedLQty': instance.requestedLQty,
      'HQTY': instance.hqty,
      'LQTY': instance.lqty,
    };
