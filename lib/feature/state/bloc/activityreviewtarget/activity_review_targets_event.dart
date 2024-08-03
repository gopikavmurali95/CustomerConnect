part of 'activity_review_targets_bloc.dart';

@freezed
class ActivityReviewTargetsEvent with _$ActivityReviewTargetsEvent {
  const factory ActivityReviewTargetsEvent.getActivityTargetEvent(
      {required String udpID}) = GetActivityTargetEvent;

  const factory ActivityReviewTargetsEvent.clearActivitytargetEvent() =
      ClearActivitytargetEvent;
}
