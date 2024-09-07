import 'package:json_annotation/json_annotation.dart';

part 'login_user_model.g.dart';

@JsonSerializable()
class LoginUserModel {
  @JsonKey(name: 'FirstName')
  String? firstName;
  @JsonKey(name: 'ArFirstName')
  String? arfirstName;
  @JsonKey(name: 'LastName')
  String? lastName;
  @JsonKey(name: 'ArLastName')
  String? arlastName;
  @JsonKey(name: 'Email')
  String? email;
  @JsonKey(name: 'ContacInfo')
  String? contacInfo;
  @JsonKey(name: 'usrID')
  String? usrId;
  @JsonKey(name: 'UserName')
  String? userName;
  @JsonKey(name: 'NewUser')
  String? newUser;
  @JsonKey(name: 'Title')
  String? title;
  @JsonKey(name: 'Descr')
  String? descr;
  @JsonKey(name: 'VersionDate')
  String? versionDate;

  LoginUserModel({
    this.firstName,
    this.lastName,
    this.email,
    this.contacInfo,
    this.usrId,
    this.userName,
    this.newUser,
    this.title,
    this.descr,
    this.versionDate,
  });

  factory LoginUserModel.fromJson(Map<String, dynamic> json) {
    return _$LoginUserModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoginUserModelToJson(this);
}
