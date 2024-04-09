part of 'cus_sp_price_bloc.dart';

@freezed
class CusSpPriceEvent with _$CusSpPriceEvent {
  const factory CusSpPriceEvent.getCusSpPriceHeadersEvent(
      {required CusSpPriceInModel cuIN,
      required String searchQuery}) = GetCusSpPriceHeadersEvent;
  const factory CusSpPriceEvent.clearCusSpPriceHeaderEvent() =
      ClearCusSpPriceHeaderEvent;
}
