part of 'merch_survey_count_bloc.dart';

@freezed
class MerchSurveyCountState with _$MerchSurveyCountState {
  const factory MerchSurveyCountState.getSurveyCountState(
      {required GetSurveyCountModel? survey}) = GetSurveyCountState;

  const factory MerchSurveyCountState.surveyCountFailedState() =
      SurveyCountFailedState;
  factory MerchSurveyCountState.initial() =>
      const MerchSurveyCountState.getSurveyCountState(survey: null);
}
