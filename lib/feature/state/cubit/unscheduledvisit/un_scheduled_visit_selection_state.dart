part of 'un_scheduled_visit_selection_cubit.dart';

@freezed
class UnScheduledVisitSelectionState with _$UnScheduledVisitSelectionState {
  const factory UnScheduledVisitSelectionState.unSchedledSelectedItemsState(
          {required List<UnScheduledVisitApproveInModel> selected}) =
      UnSchedledSelectedItemsState;

  factory UnScheduledVisitSelectionState.initial() =>
      const UnScheduledVisitSelectionState.unSchedledSelectedItemsState(
          selected: []);
}
