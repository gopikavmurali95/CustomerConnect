// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loading_header_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoadingHeaderInModel _$LoadingHeaderInModelFromJson(
        Map<String, dynamic> json) =>
    LoadingHeaderInModel(
      userId: json['UserID'] as String?,
      fromDate: json['FromDate'] as String?,
      toDate: json['ToDate'] as String?,
      mode: json['Mode'] as String?,
      route: json['Route'] as String?,
      area: json['Area'] as String?,
      subArea: json['SubArea'] as String?,
    );

Map<String, dynamic> _$LoadingHeaderInModelToJson(
        LoadingHeaderInModel instance) =>
    <String, dynamic>{
      'UserID': instance.userId,
      'FromDate': instance.fromDate,
      'ToDate': instance.toDate,
      'Mode': instance.mode,
      'Route': instance.route,
      'Area': instance.area,
      'SubArea': instance.subArea,
    };
