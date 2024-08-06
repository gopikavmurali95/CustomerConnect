part of 'oos_customer_detail_bloc.dart';

@freezed
class OosCustomerDetailState with _$OosCustomerDetailState {
  const factory OosCustomerDetailState.getOosCustomerDetailsState(
          {required List<OutOfStockCustomerDetailModel>? details}) =
      GetOosCustomerDetailsState;

  const factory OosCustomerDetailState.oosCustomersDetailFailedState() =
      OosCustomersDetailFailedState;

  factory OosCustomerDetailState.initial() =>
      const OosCustomerDetailState.getOosCustomerDetailsState(details: null);
}
