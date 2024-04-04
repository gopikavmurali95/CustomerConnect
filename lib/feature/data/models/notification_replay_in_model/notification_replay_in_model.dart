import 'package:json_annotation/json_annotation.dart';

part 'notification_replay_in_model.g.dart';

@JsonSerializable()
class NotificationReplayInModel {
  @JsonKey(name: 'rnt_ReplyMessage')
  String? rntReplyMessage;
  @JsonKey(name: 'rnt_ReplyUserID')
  String? rntReplyUserId;
  @JsonKey(name: 'rnt_ID')
  String? rntId;

  NotificationReplayInModel({
    this.rntReplyMessage,
    this.rntReplyUserId,
    this.rntId,
  });

  factory NotificationReplayInModel.fromJson(Map<String, dynamic> json) {
    return _$NotificationReplayInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NotificationReplayInModelToJson(this);
}
