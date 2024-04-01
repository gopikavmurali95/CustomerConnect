part of 'cus_promo_detail_bloc.dart';

@freezed
class CusPromoDetailState with _$CusPromoDetailState {
  const factory CusPromoDetailState.getCusPromoDetailState(
          {required List<CusPromotionDetailModel>? details}) =
      GetCusPromoDetailState;

  const factory CusPromoDetailState.getCusPromodetailFailedState() =
      GetCusPromodetailFailedState;

  factory CusPromoDetailState.initial() =>
      const CusPromoDetailState.getCusPromoDetailState(details: null);
}
