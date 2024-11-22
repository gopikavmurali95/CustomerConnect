part of 'stamped_copy_bloc.dart';

@freezed
class StampedCopyEvent with _$StampedCopyEvent {
  const factory StampedCopyEvent.generateStampedCopyEvent(
      {required String invId}) = GenerateStampedCopyEvent;

  const factory StampedCopyEvent.stampedCopyLoadingEvent() =
      StampedCopyLoadingEvent;

  const factory StampedCopyEvent.clearStampedCopy() = ClearStampedCopy;
}
