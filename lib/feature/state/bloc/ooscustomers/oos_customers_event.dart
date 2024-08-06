part of 'oos_customers_bloc.dart';

@freezed
class OosCustomersEvent with _$OosCustomersEvent {
  const factory OosCustomersEvent.getOosCustomersEvent(
      {required String searchQuery,
      required String fromDate,
      required String toDate}) = GetOosCustomersEvent;

  const factory OosCustomersEvent.clearOosCustomersEvent() =
      ClearOosCustomersEvent;
}
