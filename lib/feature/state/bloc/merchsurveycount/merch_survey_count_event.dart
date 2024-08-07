part of 'merch_survey_count_bloc.dart';

@freezed
class MerchSurveyCountEvent with _$MerchSurveyCountEvent {
  const factory MerchSurveyCountEvent.getSurveyCountEvent(
      {required String fromDate, required String toDate}) = GetSurveyCountEvent;

  const factory MerchSurveyCountEvent.surveyCountClearEvent() =
      SurveyCountClearEvent;
}
