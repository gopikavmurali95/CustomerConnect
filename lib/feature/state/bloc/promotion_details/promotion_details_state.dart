part of 'promotion_details_bloc.dart';

@freezed
class PromotionDetailsState with _$PromotionDetailsState {
  const factory PromotionDetailsState.getPromotionDetailsState(
          {required List<PromotionDetailsModel>? promodetails}) =
      GetPromotionDetailsState;

  const factory PromotionDetailsState.promotionDetailsFailed() =
      PromotionDetailsFailed;

  factory PromotionDetailsState.initial() =>
      const PromotionDetailsState.getPromotionDetailsState(promodetails: null);
}
