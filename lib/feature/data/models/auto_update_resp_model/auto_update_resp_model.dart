import 'package:json_annotation/json_annotation.dart';

part 'auto_update_resp_model.g.dart';

@JsonSerializable()
class AutoUpdateRespModel {
  @JsonKey(name: 'ver_code')
  String? verCode;
  @JsonKey(name: 'ver_name')
  String? verName;
  String? url;
  String? msg;

  AutoUpdateRespModel({this.verCode, this.verName, this.url, this.msg});

  factory AutoUpdateRespModel.fromJson(Map<String, dynamic> json) {
    return _$AutoUpdateRespModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AutoUpdateRespModelToJson(this);
}
