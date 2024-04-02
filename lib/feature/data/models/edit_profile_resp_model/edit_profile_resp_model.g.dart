// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditProfileRespModel _$EditProfileRespModelFromJson(
        Map<String, dynamic> json) =>
    EditProfileRespModel(
      res: json['Res'] as String?,
      title: json['Title'] as String?,
      descr: json['Descr'] as String?,
    );

Map<String, dynamic> _$EditProfileRespModelToJson(
        EditProfileRespModel instance) =>
    <String, dynamic>{
      'Res': instance.res,
      'Title': instance.title,
      'Descr': instance.descr,
    };
