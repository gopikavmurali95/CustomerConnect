part of 'stamped_copy_bloc.dart';

@freezed
class StampedCopyState with _$StampedCopyState {
  const factory StampedCopyState.generateStampedCopy(
      {required StampedCopyModel? copy}) = GenerateStampedCopy;

  const factory StampedCopyState.stampedCopyFailed() = StampedCopyFailed;

  const factory StampedCopyState.stampedCopyLoading() = StampedCopyLoading;

  factory StampedCopyState.initial() =>
      const StampedCopyState.generateStampedCopy(copy: null);
}
