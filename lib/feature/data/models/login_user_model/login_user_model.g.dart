// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginUserModel _$LoginUserModelFromJson(Map<String, dynamic> json) =>
    LoginUserModel(
      firstName: json['FirstName'] as String?,
      lastName: json['LastName'] as String?,
      email: json['Email'] as String?,
      contacInfo: json['ContacInfo'] as String?,
      usrId: json['usrID'] as String?,
      userName: json['UserName'] as String?,
      newUser: json['NewUser'] as String?,
      title: json['Title'] as String?,
      descr: json['Descr'] as String?,
      versionDate: json['VersionDate'] as String?,
    )
      ..arfirstName = json['ArFirstName'] as String?
      ..arlastName = json['ArLastName'] as String?;

Map<String, dynamic> _$LoginUserModelToJson(LoginUserModel instance) =>
    <String, dynamic>{
      'FirstName': instance.firstName,
      'ArFirstName': instance.arfirstName,
      'LastName': instance.lastName,
      'ArLastName': instance.arlastName,
      'Email': instance.email,
      'ContacInfo': instance.contacInfo,
      'usrID': instance.usrId,
      'UserName': instance.userName,
      'NewUser': instance.newUser,
      'Title': instance.title,
      'Descr': instance.descr,
      'VersionDate': instance.versionDate,
    };
