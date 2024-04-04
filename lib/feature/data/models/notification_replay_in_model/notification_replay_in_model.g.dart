// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_replay_in_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationReplayInModel _$NotificationReplayInModelFromJson(
        Map<String, dynamic> json) =>
    NotificationReplayInModel(
      rntReplyMessage: json['rnt_ReplyMessage'] as String?,
      rntReplyUserId: json['rnt_ReplyUserID'] as String?,
      rntId: json['rnt_ID'] as String?,
    );

Map<String, dynamic> _$NotificationReplayInModelToJson(
        NotificationReplayInModel instance) =>
    <String, dynamic>{
      'rnt_ReplyMessage': instance.rntReplyMessage,
      'rnt_ReplyUserID': instance.rntReplyUserId,
      'rnt_ID': instance.rntId,
    };
