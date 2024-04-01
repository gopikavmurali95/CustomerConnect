part of 'cus_sp_price_bloc.dart';

@freezed
class CusSpPriceState with _$CusSpPriceState {
  const factory CusSpPriceState.getCusSpPriceHeadersState(
      {required List<CusSpPriceModel>? headers}) = GetCusSpPriceHeadersState;
  const factory CusSpPriceState.cusSpPriceHeaderFailedState() =
      CusSpPriceHeaderFailedState;

  factory CusSpPriceState.initial() =>
      const CusSpPriceState.getCusSpPriceHeadersState(headers: null);
}
