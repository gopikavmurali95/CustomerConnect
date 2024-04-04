import 'package:json_annotation/json_annotation.dart';

part 'notification_replay_out_model.g.dart';

@JsonSerializable()
class NotificationReplayOutModel {
  @JsonKey(name: 'Title')
  String? title;
  @JsonKey(name: 'Res')
  String? res;
  @JsonKey(name: 'Descr')
  String? descr;

  NotificationReplayOutModel({this.title, this.res, this.descr});

  factory NotificationReplayOutModel.fromJson(Map<String, dynamic> json) {
    return _$NotificationReplayOutModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NotificationReplayOutModelToJson(this);
}
