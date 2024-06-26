part of 'promotion_customer_bloc.dart';

@freezed
class PromotionCustomerEvent with _$PromotionCustomerEvent {
  const factory PromotionCustomerEvent.getPromotionCustomerEvent(
      {required String id,
      required String searchQuery}) = GetPromotionCustomerEvent;

  const factory PromotionCustomerEvent.clearOromotionCustomer() =
      ClearOromotionCustomer;
}
