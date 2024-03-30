part of 'cus_sp_price_bloc.dart';

@freezed
class CusSpPriceEvent with _$CusSpPriceEvent {
  const factory CusSpPriceEvent.getCusSpPriceHeadersEvent(
      {required CusSpPriceInModel cuIN}) = GetCusSpPriceHeadersEvent;
  const factory CusSpPriceEvent.clearCusSpPriceHeaderEvent() =
      ClearCusSpPriceHeaderEvent;
}
