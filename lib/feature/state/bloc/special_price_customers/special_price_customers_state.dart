part of 'special_price_customers_bloc.dart';

@freezed
class SpecialPriceCustomersState with _$SpecialPriceCustomersState {
  const factory SpecialPriceCustomersState.getSpecialPriceCustomers(
          {required List<SpecialPriceCustomerModel>? spCustomers}) =
      GetSpecialPriceCustomersState;

  const factory SpecialPriceCustomersState.specialPriceCustomersFailedState() =
      SpecialPriceCustomersFailedState;

  factory SpecialPriceCustomersState.initial() =>
      const SpecialPriceCustomersState.getSpecialPriceCustomers(
          spCustomers: null);
}
