part of 'customers_list_bloc_bloc.dart';

@freezed
class CustomersListBlocEvent with _$CustomersListBlocEvent {
  const factory CustomersListBlocEvent.getCustomersEvent(
      {required String userId,
      required String area,
      required String subarea,
      required String route,
      required String searchQuery}) = GetCustomersEvent;
  const factory CustomersListBlocEvent.clearCustomersEvent() =
      ClearCustomersEvent;
}
