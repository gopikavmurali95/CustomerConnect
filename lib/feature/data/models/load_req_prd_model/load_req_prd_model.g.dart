// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_req_prd_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoadReqPrdModel _$LoadReqPrdModelFromJson(Map<String, dynamic> json) =>
    LoadReqPrdModel(
      lrdPrdId: json['lrd_prd_ID'] as String?,
      lrdHQty: json['lrd_HQty'] as String?,
      lrdLQty: json['lrd_LQty'] as String?,
      lrdLuom: json['lrd_LUOM'] as String?,
      lrdHuom: json['lrd_HUOM'] as String?,
      lrdTotalQty: json['lrd_totalQty'] as String?,
      txtApvHQty: json['txt_apv_HQty'] as String?,
      txtApvLQty: json['txt_apv_LQty'] as String?,
      lrdId: json['lrd_ID'] as String?,
    );

Map<String, dynamic> _$LoadReqPrdModelToJson(LoadReqPrdModel instance) =>
    <String, dynamic>{
      'lrd_prd_ID': instance.lrdPrdId,
      'lrd_HQty': instance.lrdHQty,
      'lrd_LQty': instance.lrdLQty,
      'lrd_LUOM': instance.lrdLuom,
      'lrd_HUOM': instance.lrdHuom,
      'lrd_totalQty': instance.lrdTotalQty,
      'txt_apv_HQty': instance.txtApvHQty,
      'txt_apv_LQty': instance.txtApvLQty,
      'lrd_ID': instance.lrdId,
    };
