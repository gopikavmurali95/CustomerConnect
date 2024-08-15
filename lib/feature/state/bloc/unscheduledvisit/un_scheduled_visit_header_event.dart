part of 'un_scheduled_visit_header_bloc.dart';

@freezed
class UnScheduledVisitHeaderEvent with _$UnScheduledVisitHeaderEvent {
  const factory UnScheduledVisitHeaderEvent.getUnScheduledHeadersEvent(
      {required String searchQuery,
      required String mode}) = GetUnScheduledHeadersEvent;

  const factory UnScheduledVisitHeaderEvent.clearUnScheduledVisitEvent() =
      ClearUnScheduledVisitEvent;
}
