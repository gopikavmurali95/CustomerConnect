// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserNotificationModel _$UserNotificationModelFromJson(
        Map<String, dynamic> json) =>
    UserNotificationModel(
      rntId: json['rnt_ID'] as String?,
      rntHeader: json['rnt_Header'] as String?,
      rntDesc: json['rnt_Desc'] as String?,
      rntReadFlag: json['rnt_ReadFlag'] as String?,
      rntReplyMessage: json['rnt_ReplyMessage'] as String?,
      rntReplyUserId: json['rnt_ReplyUserID'] as String?,
      rntReplyTime: json['rnt_ReplyTime'] as String?,
      createdDate: json['CreatedDate'] as String?,
      status: json['Status'] as String?,
      rntUsrId: json['rnt_usr_ID'] as String?,
    )
      ..arStatus = json['ArStatus'] as String?
      ..rntArDesc = json['rnt_ArDesc'] as String?
      ..rntArHeader = json['rnt_ArHeader'] as String?;

Map<String, dynamic> _$UserNotificationModelToJson(
        UserNotificationModel instance) =>
    <String, dynamic>{
      'rnt_ID': instance.rntId,
      'rnt_Header': instance.rntHeader,
      'rnt_Desc': instance.rntDesc,
      'rnt_ReadFlag': instance.rntReadFlag,
      'rnt_ReplyMessage': instance.rntReplyMessage,
      'rnt_ReplyUserID': instance.rntReplyUserId,
      'rnt_ReplyTime': instance.rntReplyTime,
      'CreatedDate': instance.createdDate,
      'Status': instance.status,
      'rnt_usr_ID': instance.rntUsrId,
      'ArStatus': instance.arStatus,
      'rnt_ArDesc': instance.rntArDesc,
      'rnt_ArHeader': instance.rntArHeader,
    };
