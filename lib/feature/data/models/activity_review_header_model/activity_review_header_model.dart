import 'package:json_annotation/json_annotation.dart';

part 'activity_review_header_model.g.dart';

@JsonSerializable()
class ActivityReviewHeaderModel {
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'rot_Name')
  String? rotName;
  @JsonKey(name: 'rot_Type')
  String? rotType;
  @JsonKey(name: 'usr_Name')
  String? usrName;
  @JsonKey(name: 'StartTime')
  String? startTime;
  @JsonKey(name: 'EndTime')
  String? endTime;
  @JsonKey(name: 'udpID')
  String? udpId;
  @JsonKey(name: 'duration')
  String? duration;
  @JsonKey(name: 'rot_ArType')
  String? rotArType;
  @JsonKey(name: 'rot_ArName')
  String? rotArName;
  @JsonKey(name: 'usr_ArName')
  String? userArname;

  ActivityReviewHeaderModel({
    this.rotCode,
    this.rotName,
    this.rotType,
    this.usrName,
    this.startTime,
    this.endTime,
    this.udpId,
    this.duration,
  });

  factory ActivityReviewHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$ActivityReviewHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ActivityReviewHeaderModelToJson(this);
}
