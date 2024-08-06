part of 'oos_customers_bloc.dart';

@freezed
class OosCustomersState with _$OosCustomersState {
  const factory OosCustomersState.getOosCustomersState(
          {required List<OutOfStockCustomerModel>? customers}) =
      GetOosCustomersState;
  const factory OosCustomersState.oosCustomersFailedState() =
      OosCustomersFailedState;

  factory OosCustomersState.initial() =>
      const OosCustomersState.getOosCustomersState(customers: null);
}
