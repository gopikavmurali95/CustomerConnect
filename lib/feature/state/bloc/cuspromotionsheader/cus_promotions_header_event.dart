part of 'cus_promotions_header_bloc.dart';

@freezed
class CusPromotionsHeaderEvent with _$CusPromotionsHeaderEvent {
  const factory CusPromotionsHeaderEvent.getCusPromoHeaderEvent(
      {required CusPromoInModel cusIn,
      required String searchQuery}) = GetCusPromoHeaderEvent;
  const factory CusPromotionsHeaderEvent.clearCusPromoEvent() =
      ClearCusPromoEvent;
}
