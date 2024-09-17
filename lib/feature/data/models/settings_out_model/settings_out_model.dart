import 'package:json_annotation/json_annotation.dart';

part 'settings_out_model.g.dart';

@JsonSerializable()
class SettingsOutModel {
  @JsonKey(name: 'ParentNode')
  String? parentNode;
  @JsonKey(name: 'ChildNode')
  String? childNode;

  SettingsOutModel({this.parentNode, this.childNode});

  factory SettingsOutModel.fromJson(Map<String, dynamic> json) {
    return _$SettingsOutModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SettingsOutModelToJson(this);
}
