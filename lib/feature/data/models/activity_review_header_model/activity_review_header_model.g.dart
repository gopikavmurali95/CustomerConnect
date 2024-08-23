// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_review_header_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivityReviewHeaderModel _$ActivityReviewHeaderModelFromJson(
        Map<String, dynamic> json) =>
    ActivityReviewHeaderModel(
      rotCode: json['rot_Code'] as String?,
      rotName: json['rot_Name'] as String?,
      rotType: json['rot_Type'] as String?,
      usrName: json['usr_Name'] as String?,
      startTime: json['StartTime'] as String?,
      endTime: json['EndTime'] as String?,
      udpId: json['udpID'] as String?,
      duration: json['duration'] as String?,
    )
      ..rotArType = json['rot_ArType'] as String?
      ..rotArName = json['rot_ArName'] as String?
      ..userArname = json['usr_ArName'] as String?;

Map<String, dynamic> _$ActivityReviewHeaderModelToJson(
        ActivityReviewHeaderModel instance) =>
    <String, dynamic>{
      'rot_Code': instance.rotCode,
      'rot_Name': instance.rotName,
      'rot_Type': instance.rotType,
      'usr_Name': instance.usrName,
      'StartTime': instance.startTime,
      'EndTime': instance.endTime,
      'udpID': instance.udpId,
      'duration': instance.duration,
      'rot_ArType': instance.rotArType,
      'rot_ArName': instance.rotArName,
      'usr_ArName': instance.userArname,
    };
