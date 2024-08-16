part of 'un_scheduled_visit_header_bloc.dart';

@freezed
class UnScheduledVisitHeaderState with _$UnScheduledVisitHeaderState {
  const factory UnScheduledVisitHeaderState.getUnScheduledVistHeadersState(
          {required List<UnScheduledApprovalHeaderModel>? headers}) =
      GetUnScheduledVistHeadersState;
  const factory UnScheduledVisitHeaderState.unScheduledVisitFailedState() =
      UnScheduledVisitFailedState;

  factory UnScheduledVisitHeaderState.initial() =>
      const UnScheduledVisitHeaderState.getUnScheduledVistHeadersState(
          headers: null);
}
