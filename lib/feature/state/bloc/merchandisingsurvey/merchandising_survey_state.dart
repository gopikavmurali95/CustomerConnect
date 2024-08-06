part of 'merchandising_survey_bloc.dart';

@freezed
class MerchandisingSurveyState with _$MerchandisingSurveyState {
  const factory MerchandisingSurveyState.getMerchandisingSurveyState(
          {required List<MerchandingSurveyModel>? data}) =
      GetMerchandisingSurveyState;

  const factory MerchandisingSurveyState.getMerchandisingSurveyFailedState() =
      GetMerchandisingSurveyFailedState;

  factory MerchandisingSurveyState.initial() =>
      const MerchandisingSurveyState.getMerchandisingSurveyState(data: null);
}
