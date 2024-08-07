part of 'merchdisplaycount_bloc.dart';

@freezed
class MerchdisplaycountEvent with _$MerchdisplaycountEvent {
  const factory MerchdisplaycountEvent.getDisplayCountEvent(
      {required String fromDate,
      required String toDate}) = GetDisplayCountEvent;

  const factory MerchdisplaycountEvent.displayCountClearEvent() =
      DisplayCountClearEvent;
}
