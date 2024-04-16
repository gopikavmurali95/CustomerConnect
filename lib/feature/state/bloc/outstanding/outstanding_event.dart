part of 'outstanding_bloc.dart';

@freezed
class OutstandingEvent with _$OutstandingEvent {
  const factory OutstandingEvent.getOutstandingDataEvent(
      {required OutStandingHeaderModel outIn,
      required String searchQuery}) = GetOutstandingDataEvent;

  const factory OutstandingEvent.clearOutStandingEvent() =
      ClearOutStandingEvent;
}
