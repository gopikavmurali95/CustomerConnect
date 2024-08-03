part of 'activity_review_sales_data_bloc.dart';

@freezed
class ActivityReviewSalesDataState with _$ActivityReviewSalesDataState {
  const factory ActivityReviewSalesDataState.getActivityReviewSalesData(
      {required ActivityReviewSalesModel? sales}) = GetActivityReviewSalesData;
  const factory ActivityReviewSalesDataState.activitySalesFailedState() =
      ActivitySalesFailedState;

  factory ActivityReviewSalesDataState.initial() =>
      const ActivityReviewSalesDataState.getActivityReviewSalesData(
          sales: null);
}
