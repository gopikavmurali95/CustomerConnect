// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cus_ins_ar_header_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CusInsArHeaderInModel _$CusInsArHeaderInModelFromJson(
        Map<String, dynamic> json) =>
    CusInsArHeaderInModel(
      userId: json['UserID'] as String?,
      fromDate: json['From_Date'] as String?,
      toDate: json['To_Date'] as String?,
      area: json['Area'] as String?,
      subArea: json['SubArea'] as String?,
      route: json['Route'] as String?,
      cusId: json['cus_ID'] as String?,
    );

Map<String, dynamic> _$CusInsArHeaderInModelToJson(
        CusInsArHeaderInModel instance) =>
    <String, dynamic>{
      'UserID': instance.userId,
      'From_Date': instance.fromDate,
      'To_Date': instance.toDate,
      'Area': instance.area,
      'SubArea': instance.subArea,
      'Route': instance.route,
      'cus_ID': instance.cusId,
    };
