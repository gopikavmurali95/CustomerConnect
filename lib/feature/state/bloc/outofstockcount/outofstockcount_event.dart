part of 'outofstockcount_bloc.dart';

@freezed
class OutofstockcountEvent with _$OutofstockcountEvent {
  const factory OutofstockcountEvent.getOutOfStockCountEvent() =
      GetOutOfStockCountEvent;

  const factory OutofstockcountEvent.clearOutOfStockCountEvent() =
      ClearOutOfStockCountEvent;
}
