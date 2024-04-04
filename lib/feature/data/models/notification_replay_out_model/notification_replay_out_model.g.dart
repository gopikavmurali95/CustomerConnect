// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_replay_out_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationReplayOutModel _$NotificationReplayOutModelFromJson(
        Map<String, dynamic> json) =>
    NotificationReplayOutModel(
      title: json['Title'] as String?,
      res: json['Res'] as String?,
      descr: json['Descr'] as String?,
    );

Map<String, dynamic> _$NotificationReplayOutModelToJson(
        NotificationReplayOutModel instance) =>
    <String, dynamic>{
      'Title': instance.title,
      'Res': instance.res,
      'Descr': instance.descr,
    };
