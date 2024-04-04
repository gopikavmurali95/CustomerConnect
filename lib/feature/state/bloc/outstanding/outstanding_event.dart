part of 'outstanding_bloc.dart';

@freezed
class OutstandingEvent with _$OutstandingEvent {
  const factory OutstandingEvent.getOutstandingDataEvent(
      {required OutStandingHeaderModel outIn}) = GetOutstandingDataEvent;

  const factory OutstandingEvent.clearOutStandingEvent() =
      ClearOutStandingEvent;
}
