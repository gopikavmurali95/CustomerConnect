import 'package:json_annotation/json_annotation.dart';

part 'chat_user_model.g.dart';

@JsonSerializable()
class ChatUserModel {
  @JsonKey(name: 'ID')
  String? id;
  @JsonKey(name: 'Name')
  String? name;

  ChatUserModel({this.id, this.name});

  factory ChatUserModel.fromJson(Map<String, dynamic> json) {
    return _$ChatUserModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ChatUserModelToJson(this);
}
