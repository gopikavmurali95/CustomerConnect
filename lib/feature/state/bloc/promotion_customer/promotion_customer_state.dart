part of 'promotion_customer_bloc.dart';

@freezed
class PromotionCustomerState with _$PromotionCustomerState {
  const factory PromotionCustomerState.getPromotionCustomer(
          {required List<PromotionCustomerModel>? promotioncust}) =
      GetPromotionCustomerState;

  const factory PromotionCustomerState.promotionCustomerFailed() =
      PromotionCustomerFailed;

  factory PromotionCustomerState.initial() =>
      const PromotionCustomerState.getPromotionCustomer(promotioncust: null);
}
