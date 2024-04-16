part of 'special_price_customers_bloc.dart';

@freezed
class SpecialPriceCustomersEvent with _$SpecialPriceCustomersEvent {
  const factory SpecialPriceCustomersEvent.getSpecialPriceCustomersEvent(
      {required String userID,
      required String fromDate,
      required String todate,
      required String searchQuery}) = GetSpecialPriceCustomersEvent;

  const factory SpecialPriceCustomersEvent.clearSpecialPriceCustomer() =
      ClearSpecialPriceCustomer;
}
