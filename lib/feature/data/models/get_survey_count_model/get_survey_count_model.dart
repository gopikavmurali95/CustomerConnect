import 'package:json_annotation/json_annotation.dart';

part 'get_survey_count_model.g.dart';

@JsonSerializable()
class GetSurveyCountModel {
  @JsonKey(name: 'AssignedSurvey')
  String? assignedSurvey;
  @JsonKey(name: 'CompletedSurvey')
  String? completedSurvey;

  GetSurveyCountModel({this.assignedSurvey, this.completedSurvey});

  factory GetSurveyCountModel.fromJson(Map<String, dynamic> json) {
    return _$GetSurveyCountModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetSurveyCountModelToJson(this);
}
