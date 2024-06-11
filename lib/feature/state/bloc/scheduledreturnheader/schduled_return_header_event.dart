part of 'schduled_return_header_bloc.dart';

@freezed
class SchduledReturnHeaderEvent with _$SchduledReturnHeaderEvent {
  const factory SchduledReturnHeaderEvent.getAllScheduledReturnHeadersEvent(
      {required String userID,
      required String mode,
      required String searchQuery}) = GetAllScheduledReturnHeadersEvent;

  const factory SchduledReturnHeaderEvent.clearScheduledReturnHeadersEvent() =
      ClearScheduledReturnHeadersEvent;
}
