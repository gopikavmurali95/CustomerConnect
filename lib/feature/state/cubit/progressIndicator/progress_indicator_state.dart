part of 'progress_indicator_cubit.dart';

@freezed
class ProgressIndicatorState with _$ProgressIndicatorState {
  const factory ProgressIndicatorState.showProgresIndicatorState(
      {required bool isLoading}) = ShowProgresIndicatorState;

  const factory ProgressIndicatorState.removeProgressIndicatorState() =
      RemoveProgressIndicatorState;

  factory ProgressIndicatorState.initial() =>
      const ProgressIndicatorState.showProgresIndicatorState(isLoading: false);
}
