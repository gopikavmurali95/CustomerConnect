part of 'oos_customer_detail_bloc.dart';

@freezed
class OosCustomerDetailEvent with _$OosCustomerDetailEvent {
  const factory OosCustomerDetailEvent.getOosCustomerDetailEvent({
    required String searchQuery,
    required String cusID,
  }) = GetOosCustomerDetailEvent;

  const factory OosCustomerDetailEvent.clearOosCustomerDetilEvent() =
      ClearOosCustomerDetilEvent;
}
