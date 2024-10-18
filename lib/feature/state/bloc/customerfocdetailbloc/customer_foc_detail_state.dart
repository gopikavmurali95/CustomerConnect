part of 'customer_foc_detail_bloc.dart';

@freezed
class CustomerFocDetailState with _$CustomerFocDetailState {
  const factory CustomerFocDetailState.getCustomerFocDetailsState(
          {required List<CustomerFocDetailModel>? details}) =
      GetCustomerFocDetailsState;

  const factory CustomerFocDetailState.customerFocDetailFailedState() =
      CustomerFocDetailFailedState;

  factory CustomerFocDetailState.initial() =>
      const CustomerFocDetailState.getCustomerFocDetailsState(details: null);
}
