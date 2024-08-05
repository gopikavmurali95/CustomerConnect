part of 'target_header_count_bloc.dart';

@freezed
class TargetHeaderCountEvent with _$TargetHeaderCountEvent {
  const factory TargetHeaderCountEvent.getTargetHeaderCountEvent(
      {required String fromDate}) = GetTargetHeaderCountEvent;

  const factory TargetHeaderCountEvent.clearTargetHeaderCount() =
      ClearTargetHeaderCount;
}
