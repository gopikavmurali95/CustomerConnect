part of 'activity_review_sales_data_bloc.dart';

@freezed
class ActivityReviewSalesDataEvent with _$ActivityReviewSalesDataEvent {
  const factory ActivityReviewSalesDataEvent.getActivitySalesEvent(
      {required String udpID}) = GetActivitySalesEvent;

  const factory ActivityReviewSalesDataEvent.clearActivitySalesEvent() =
      ClearActivitySalesEvent;
}
