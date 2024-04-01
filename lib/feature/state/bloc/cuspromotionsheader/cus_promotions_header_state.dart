part of 'cus_promotions_header_bloc.dart';

@freezed
class CusPromotionsHeaderState with _$CusPromotionsHeaderState {
  const factory CusPromotionsHeaderState.getCusPromotionsHeaderState(
          {required List<CusPromotionHeader>? headers}) =
      GetCusPromotionsHeaderState;

  const factory CusPromotionsHeaderState.cusPromotionHeaderFailedState() =
      CusPromotionHeaderFailedState;

  factory CusPromotionsHeaderState.initial() =>
      const CusPromotionsHeaderState.getCusPromotionsHeaderState(headers: null);
}
