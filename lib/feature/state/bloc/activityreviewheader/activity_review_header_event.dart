part of 'activity_review_header_bloc.dart';

@freezed
class ActivityReviewHeaderEvent with _$ActivityReviewHeaderEvent {
  const factory ActivityReviewHeaderEvent.getActivityReviewHeadersEvent(
      {required String rotTyp,
      required String searchQuery}) = GetActivityReviewHeadersEvent;

  const factory ActivityReviewHeaderEvent.clearActivityReviewHeaderEvent() =
      ClearActivityReviewHeaderEvent;
}
