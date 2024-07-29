// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'res.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Res _$ResFromJson(Map<String, dynamic> json) => Res(
      code: (json['code'] as num?)?.toInt(),
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResToJson(Res instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
