part of 'activity_review_detail_bloc.dart';

@freezed
class ActivityReviewDetailState with _$ActivityReviewDetailState {
  const factory ActivityReviewDetailState.getActivityReviewDetailState(
          {required List<ActivityReviewDetailListModel>? details}) =
      GetActivityReviewDetailState;
  const factory ActivityReviewDetailState.activityReviewDetailFailedState() =
      ActivityReviewDetailFailedState;

  factory ActivityReviewDetailState.initial() =>
      const ActivityReviewDetailState.getActivityReviewDetailState(
          details: null);
}
