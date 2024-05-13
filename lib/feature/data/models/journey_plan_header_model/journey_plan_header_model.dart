import 'package:json_annotation/json_annotation.dart';

part 'journey_plan_header_model.g.dart';

@JsonSerializable()
class JourneyPlanHeaderModel {
  @JsonKey(name: 'jps_ID')
  String? jpsId;
  @JsonKey(name: 'jps_PrevSeq')
  String? jpsPrevSeq;
  @JsonKey(name: 'jps_CurrentSeq')
  String? jpsCurrentSeq;
  @JsonKey(name: 'CreatedDate')
  String? createdDate;
  @JsonKey(name: 'rot_Code')
  String? rotCode;
  @JsonKey(name: 'Route')
  String? route;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'rsn_Name')
  String? rsnName;
  @JsonKey(name: 'Status')
  String? status;

  JourneyPlanHeaderModel({
    this.jpsId,
    this.jpsPrevSeq,
    this.jpsCurrentSeq,
    this.createdDate,
    this.rotCode,
    this.route,
    this.cusName,
    this.cusCode,
    this.rsnName,
    this.status,
  });

  factory JourneyPlanHeaderModel.fromJson(Map<String, dynamic> json) {
    return _$JourneyPlanHeaderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$JourneyPlanHeaderModelToJson(this);
}
