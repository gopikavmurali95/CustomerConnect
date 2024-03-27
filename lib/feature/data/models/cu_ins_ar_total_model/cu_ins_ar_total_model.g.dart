// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cu_ins_ar_total_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CuInsArTotalModel _$CuInsArTotalModelFromJson(Map<String, dynamic> json) =>
    CuInsArTotalModel(
      userId: json['UserID'] as String?,
      fromDate: json['From_Date'] as String?,
      toDate: json['To_Date'] as String?,
      area: json['Area'] as String?,
      subArea: json['SubArea'] as String?,
      route: json['Route'] as String?,
      cusId: json['cus_ID'] as String?,
    );

Map<String, dynamic> _$CuInsArTotalModelToJson(CuInsArTotalModel instance) =>
    <String, dynamic>{
      'UserID': instance.userId,
      'From_Date': instance.fromDate,
      'To_Date': instance.toDate,
      'Area': instance.area,
      'SubArea': instance.subArea,
      'Route': instance.route,
      'cus_ID': instance.cusId,
    };
