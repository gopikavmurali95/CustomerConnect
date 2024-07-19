// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MessageModel _$MessageModelFromJson(Map<String, dynamic> json) => MessageModel(
      message: json['message'] as String?,
      time: json['time'] as String?,
      isSender: json['issender'] as bool?,
      date: json['date'] as String?,
      toEmail: json['tomail'] as String?,
      uid: json['uid'] as String?,
      chatid: json['chat-id'] as String?,
      fromuser: json['fromuser'] as String?,
      touser: json['touser'] as String?,
      datetime: json['datetime'] as String?,
    );

Map<String, dynamic> _$MessageModelToJson(MessageModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'time': instance.time,
      'issender': instance.isSender,
      'date': instance.date,
      'tomail': instance.toEmail,
      'uid': instance.uid,
      'chat-id': instance.chatid,
      'fromuser': instance.fromuser,
      'touser': instance.touser,
      'datetime': instance.datetime,
    };
