part of 'promotion_header_bloc.dart';

@freezed
class PromotionHeaderState with _$PromotionHeaderState {
  const factory PromotionHeaderState.getPromotionsHeader(
          {required List<PromotionHeaderModel>? promotion}) =
      GetPromotionsHeaderState;

  const factory PromotionHeaderState.promotionHeaderFailed() =
      PromotionHeaderFailed;

  factory PromotionHeaderState.initial() =>
      const PromotionHeaderState.getPromotionsHeader(promotion: null);
}
