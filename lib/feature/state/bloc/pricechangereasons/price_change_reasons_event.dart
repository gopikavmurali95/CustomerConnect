part of 'price_change_reasons_bloc.dart';

@freezed
class PriceChangeReasonsEvent with _$PriceChangeReasonsEvent {
  const factory PriceChangeReasonsEvent.getPRiceChangeReason(
      {required String rsnType}) = GetPRiceChangeReasonEvent;

  const factory PriceChangeReasonsEvent.clearPriceChangeReason() =
      ClearPriceChangeReason;
}
