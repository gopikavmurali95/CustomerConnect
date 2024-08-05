part of 'merchandising_survey_bloc.dart';

@freezed
class MerchandisingSurveyEvent with _$MerchandisingSurveyEvent {
  const factory MerchandisingSurveyEvent.getMerchandisingSurveyEvent(
      {required String fromDate,
      required String toDate,
      required String status,
      required String searchQuery}) = GetMerchandisingSurveyEvent;

  const factory MerchandisingSurveyEvent.clearMerchandisingSurveyList() =
      ClearMerchandisingSurveyList;
}
