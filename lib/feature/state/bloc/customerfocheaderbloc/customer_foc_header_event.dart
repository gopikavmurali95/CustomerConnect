part of 'customer_foc_header_bloc.dart';

@freezed
class CustomerFocHeaderEvent with _$CustomerFocHeaderEvent {
  const factory CustomerFocHeaderEvent.getCustomerFocHeaderEvent(
      {required String statusValue,
      required String searchQuery}) = GetCustomerFocHeaderEvent;

  const factory CustomerFocHeaderEvent.clearCustomerFocHeader() =
      ClearCustomerFocHeader;
}
