part of 'cus_promo_detail_bloc.dart';

@freezed
class CusPromoDetailEvent with _$CusPromoDetailEvent {
  const factory CusPromoDetailEvent.getCusPromoDetailEvent(
      {required String iD}) = GetCusPromoDetailEvent;
  const factory CusPromoDetailEvent.clearCusPromoDetailEvent() =
      ClearCusPromoDetailEvent;
}
