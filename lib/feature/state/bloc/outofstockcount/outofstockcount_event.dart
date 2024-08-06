part of 'outofstockcount_bloc.dart';

@freezed
class OutofstockcountEvent with _$OutofstockcountEvent {
  const factory OutofstockcountEvent.getOutOfStockCountEvent(
      {required String fromDate,
      required String toDate}) = GetOutOfStockCountEvent;

  const factory OutofstockcountEvent.clearOutOfStockCountEvent() =
      ClearOutOfStockCountEvent;
}
