part of 'activity_review_detail_bloc.dart';

@freezed
class ActivityReviewDetailEvent with _$ActivityReviewDetailEvent {
  const factory ActivityReviewDetailEvent.getActivityReviewDetailEvent(
      {required String udpID}) = GetActivityReviewDetailEvent;

  const factory ActivityReviewDetailEvent.clearActivityReviewDetailEvent() =
      ClearActivityReviewDetailEvent;
}
