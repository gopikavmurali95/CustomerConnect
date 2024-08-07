part of 'merch_customer_activities_bloc.dart';

@freezed
class MerchCustomerActivitiesState with _$MerchCustomerActivitiesState {
  const factory MerchCustomerActivitiesState.getMerchCustomerActivitiesDataState(
          {required List<MerchCustomerActivitiesModel>? cusActivitiesData}) =
      GetMerchCustomerActivitiesDataState;

  const factory MerchCustomerActivitiesState.getMerchCustomerActivitiesDataFailed() =
      GetMerchCustomerActivitiesDataFailed;

  factory MerchCustomerActivitiesState.initial() =>
      const MerchCustomerActivitiesState.getMerchCustomerActivitiesDataState(
          cusActivitiesData: null);
}
