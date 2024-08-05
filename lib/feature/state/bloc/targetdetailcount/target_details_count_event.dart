part of 'target_details_count_bloc.dart';

@freezed
class TargetDetailsCountEvent with _$TargetDetailsCountEvent {
  const factory TargetDetailsCountEvent.getTargetDetailsCountEvent(
      {required String fromDate,
      required String rotID}) = GetTargetDetailsCountEvent;
  const factory TargetDetailsCountEvent.clearTargetDetailsCount() =
      ClearTargetDetailsCount;
}
