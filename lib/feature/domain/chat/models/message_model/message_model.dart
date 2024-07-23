import 'package:json_annotation/json_annotation.dart';

part 'message_model.g.dart';

@JsonSerializable()
class MessageModel {
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'time')
  String? time;
  @JsonKey(name: 'issender')
  bool? isSender;
  @JsonKey(name: 'date')
  String? date;
  @JsonKey(name: 'tomail')
  String? toEmail;
  @JsonKey(name: 'uid')
  String? uid;
  @JsonKey(name: 'chat-id')
  String? chatid;
  @JsonKey(name: 'fromuser')
  String? fromuser;
  @JsonKey(name: 'touser')
  String? touser;
  @JsonKey(name: 'datetime')
  String? datetime;

  MessageModel(
      {this.message,
      this.time,
      this.isSender,
      this.date,
      this.toEmail,
      this.uid,
      this.chatid,
      this.fromuser,
      this.touser,
      this.datetime});

  factory MessageModel.fromJson(Map<String, dynamic> json) {
    return _$MessageModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MessageModelToJson(this);
}
