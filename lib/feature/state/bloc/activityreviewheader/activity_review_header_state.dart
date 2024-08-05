part of 'activity_review_header_bloc.dart';

@freezed
class ActivityReviewHeaderState with _$ActivityReviewHeaderState {
  const factory ActivityReviewHeaderState.getActivityRevewHeadersState(
          {required List<ActivityReviewHeaderModel>? headers}) =
      GetActivityRevewHeadersState;
  const factory ActivityReviewHeaderState.actvityReviewHeaderFailedState() =
      ActvityReviewHeaderFailedState;

  factory ActivityReviewHeaderState.initial() =>
      const ActivityReviewHeaderState.getActivityRevewHeadersState(
          headers: null);
}
