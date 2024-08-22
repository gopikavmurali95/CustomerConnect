// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sheduled_return_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SheduledReturnDetailModel _$SheduledReturnDetailModelFromJson(
        Map<String, dynamic> json) =>
    SheduledReturnDetailModel(
      rrdId: json['rrd_ID'] as String?,
      rrdRrhId: json['rrd_rrh_ID'] as String?,
      rrdPrdId: json['rrd_prd_ID'] as String?,
      prdCode: json['prd_Code'] as String?,
      prdName: json['prd_Name'] as String?,
      hQty: json['HQty'] as String?,
      rrdHuom: json['rrd_HUOM'] as String?,
      lQty: json['LQty'] as String?,
      rrdLuom: json['rrd_LUOM'] as String?,
      rrdLineNo: json['rrd_LineNo'] as String?,
      rsnName: json['rsn_Name'] as String?,
      status: json['Status'] as String?,
      rsnId: json['rsn_ID'] as String?,
      image: json['Image'] as String?,
      rsnType: json['rsn_Type'] as String?,
      arStatus: json['ArStatus'] as String?,
      arprdName: json['Arprd_Name'] as String?,
      arrsnName: json['Arrsn_Name'] as String?,
      arrsnType: json['Arrsn_Type'] as String?,
    );

Map<String, dynamic> _$SheduledReturnDetailModelToJson(
        SheduledReturnDetailModel instance) =>
    <String, dynamic>{
      'rrd_ID': instance.rrdId,
      'rrd_rrh_ID': instance.rrdRrhId,
      'rrd_prd_ID': instance.rrdPrdId,
      'prd_Code': instance.prdCode,
      'prd_Name': instance.prdName,
      'HQty': instance.hQty,
      'rrd_HUOM': instance.rrdHuom,
      'LQty': instance.lQty,
      'rrd_LUOM': instance.rrdLuom,
      'rrd_LineNo': instance.rrdLineNo,
      'rsn_Name': instance.rsnName,
      'Status': instance.status,
      'rsn_ID': instance.rsnId,
      'Image': instance.image,
      'rsn_Type': instance.rsnType,
      'Arprd_Name': instance.arprdName,
      'Arrsn_Name': instance.arrsnName,
      'ArStatus': instance.arStatus,
      'Arrsn_Type': instance.arrsnType,
    };
