import 'package:json_annotation/json_annotation.dart';

part 'merchanding_survey_model.g.dart';

@JsonSerializable()
class MerchandingSurveyModel {
  @JsonKey(name: 'SurveyName')
  String? surveyName;
  @JsonKey(name: 'cus_Code')
  String? cusCode;
  @JsonKey(name: 'cus_Name')
  String? cusName;
  @JsonKey(name: 'DueOn')
  String? dueOn;
  @JsonKey(name: 'CompOn')
  String? compOn;
  @JsonKey(name: 'Status')
  String? status;
  @JsonKey(name: 'SurveyArName')
  String? surveyArName;
  @JsonKey(name: 'cus_ArName')
  String? cusArName;
  @JsonKey(name: 'ArStatus')
  String? arStatus;

  MerchandingSurveyModel({
    this.surveyName,
    this.cusCode,
    this.cusName,
    this.dueOn,
    this.compOn,
    this.status,
  });

  factory MerchandingSurveyModel.fromJson(Map<String, dynamic> json) {
    return _$MerchandingSurveyModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MerchandingSurveyModelToJson(this);
}
