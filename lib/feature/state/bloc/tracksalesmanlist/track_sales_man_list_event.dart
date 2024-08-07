part of 'track_sales_man_list_bloc.dart';

@freezed
class TrackSalesManListEvent with _$TrackSalesManListEvent {
  const factory TrackSalesManListEvent.getSalesmanLocationEvent(
      {required String date, required String rotID}) = GetSalesmanLocationEvent;

  const factory TrackSalesManListEvent.getAllCustomersLocationEvent(
      {required String date}) = GetAllCustomersLocationEvent;

  const factory TrackSalesManListEvent.clearsalessmansEvent() =
      ClearsalessmansEvent;
}
