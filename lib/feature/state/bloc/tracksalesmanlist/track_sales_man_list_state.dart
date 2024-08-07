part of 'track_sales_man_list_bloc.dart';

@freezed
class TrackSalesManListState with _$TrackSalesManListState {
  const factory TrackSalesManListState.gettrackSalesManDataState(
          {required List<TrackingSalesManModel>? salesman}) =
      GettrackSalesManDataState;
  const factory TrackSalesManListState.trackAllCustomersState(
          {required List<CustomerLiveLocationModel>? customers}) =
      TrackAllCustomersState;

  const factory TrackSalesManListState.trackSalesManFailedState() =
      TrackSalesManFailedState;

  factory TrackSalesManListState.initial() =>
      const TrackSalesManListState.gettrackSalesManDataState(salesman: []);
}
