part of 'target_header_count_bloc.dart';

@freezed
class TargetHeaderCountState with _$TargetHeaderCountState {
  const factory TargetHeaderCountState.getTargetHeaderCountState(
          {required TargetHeaderCountModel? headerCount}) =
      GetTargetHeaderCountState;

  const factory TargetHeaderCountState.targetHeaderCountFailed() =
      TtargetHeaderCountFailed;

  factory TargetHeaderCountState.initial() =>
      const TargetHeaderCountState.getTargetHeaderCountState(headerCount: null);
}
