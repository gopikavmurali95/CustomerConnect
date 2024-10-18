part of 'customer_foc_detail_bloc.dart';

@freezed
class CustomerFocDetailEvent with _$CustomerFocDetailEvent {
  const factory CustomerFocDetailEvent.getCustomerFocDetailEvent(
      {required String headerId,
      required String searchQuery}) = GetCustomerFocDetailEvent;

  const factory CustomerFocDetailEvent.clearCustomerFocDetails() =
      ClearCustomerFocDetails;
}
