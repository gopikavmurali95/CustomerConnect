part of 'activity_review_targets_bloc.dart';

@freezed
class ActivityReviewTargetsState with _$ActivityReviewTargetsState {
  const factory ActivityReviewTargetsState.getActivitytargetState(
      {required ActivityTargetModel? target}) = GetActivitytargetState;

  const factory ActivityReviewTargetsState.actvitytargetFailedState() =
      ActvitytargetFailedState;

  factory ActivityReviewTargetsState.initial() =>
      const ActivityReviewTargetsState.getActivitytargetState(target: null);
}
