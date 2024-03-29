import 'package:json_annotation/json_annotation.dart';

part 'edit_profile_in_model.g.dart';

@JsonSerializable()
class EditProfileInModel {
  @JsonKey(name: 'Mail')
  String? mail;
  @JsonKey(name: 'Mob')
  String? mob;
  @JsonKey(name: 'WhatsappNo')
  String? whatsappNo;
  @JsonKey(name: 'CusID')
  String? cusId;

  EditProfileInModel({this.mail, this.mob, this.whatsappNo, this.cusId});

  factory EditProfileInModel.fromJson(Map<String, dynamic> json) {
    return _$EditProfileInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EditProfileInModelToJson(this);
}
