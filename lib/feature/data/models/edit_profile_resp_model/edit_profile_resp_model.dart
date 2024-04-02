import 'package:json_annotation/json_annotation.dart';

part 'edit_profile_resp_model.g.dart';

@JsonSerializable()
class EditProfileRespModel {
  @JsonKey(name: 'Res')
  String? res;
  @JsonKey(name: 'Title')
  String? title;
  @JsonKey(name: 'Descr')
  String? descr;

  EditProfileRespModel({this.res, this.title, this.descr});

  factory EditProfileRespModel.fromJson(Map<String, dynamic> json) {
    return _$EditProfileRespModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EditProfileRespModelToJson(this);
}
