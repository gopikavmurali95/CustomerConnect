import 'package:json_annotation/json_annotation.dart';

part 'user_notification_model.g.dart';

@JsonSerializable()
class UserNotificationModel {
  @JsonKey(name: 'rnt_ID')
  String? rntId;
  @JsonKey(name: 'rnt_Header')
  String? rntHeader;
  @JsonKey(name: 'rnt_Desc')
  String? rntDesc;
  @JsonKey(name: 'rnt_ReadFlag')
  String? rntReadFlag;
  @JsonKey(name: 'rnt_ReplyMessage')
  String? rntReplyMessage;
  @JsonKey(name: 'rnt_ReplyUserID')
  String? rntReplyUserId;
  @JsonKey(name: 'rnt_ReplyTime')
  String? rntReplyTime;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'rnt_usr_ID')
  String? rntUsrId;

  UserNotificationModel({
    this.rntId,
    this.rntHeader,
    this.rntDesc,
    this.rntReadFlag,
    this.rntReplyMessage,
    this.rntReplyUserId,
    this.rntReplyTime,
    this.createdDate,
    this.status,
    this.rntUsrId,
  });

  factory UserNotificationModel.fromJson(Map<String, dynamic> json) {
    return _$UserNotificationModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserNotificationModelToJson(this);
}
