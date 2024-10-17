part of 'customer_foc_header_bloc.dart';

@freezed
class CustomerFocHeaderState with _$CustomerFocHeaderState {
  const factory CustomerFocHeaderState.getCustomerFocHeaderState(
          {required List<CustomerFocHeaderModel>? header}) =
      GetCustomerFocHeaderState;

  const factory CustomerFocHeaderState.customerFocHeaderFailedState() =
      CustomerFocHeaderFailedState;

  factory CustomerFocHeaderState.initial() =>
      const CustomerFocHeaderState.getCustomerFocHeaderState(header: null);
}
