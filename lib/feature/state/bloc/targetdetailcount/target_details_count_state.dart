part of 'target_details_count_bloc.dart';

@freezed
class TargetDetailsCountState with _$TargetDetailsCountState {
  const factory TargetDetailsCountState.gettargetDetailCountState(
          {required TargetDetailsCountModel? detailscount}) =
      GetTargetDetailCountState;

  const factory TargetDetailsCountState.targetDetailCountFailed() =
      TargetDetailCountFailed;

  factory TargetDetailsCountState.initial() =>
      const TargetDetailsCountState.gettargetDetailCountState(
          detailscount: null);
}
