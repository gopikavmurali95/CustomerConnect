part of 'merch_customer_activities_bloc.dart';

@freezed
class MerchCustomerActivitiesEvent with _$MerchCustomerActivitiesEvent {
  const factory MerchCustomerActivitiesEvent.getMerchCustomerActivitiesData(
      {required String fromDate,
      required String toDate,
      required String status,
      required String searchQuery}) = GetMerchCustomerActivitiesData;

  const factory MerchCustomerActivitiesEvent.clearMerchCustomerActivitiesData() =
      ClearMerchCustomerActivitiesData;
}
