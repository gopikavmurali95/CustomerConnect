// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auto_update_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AutoUpdateRespModel _$AutoUpdateRespModelFromJson(Map<String, dynamic> json) =>
    AutoUpdateRespModel(
      verCode: json['ver_code'] as String?,
      verName: json['ver_name'] as String?,
      url: json['url'] as String?,
      msg: json['msg'] as String?,
    );

Map<String, dynamic> _$AutoUpdateRespModelToJson(
        AutoUpdateRespModel instance) =>
    <String, dynamic>{
      'ver_code': instance.verCode,
      'ver_name': instance.verName,
      'url': instance.url,
      'msg': instance.msg,
    };
