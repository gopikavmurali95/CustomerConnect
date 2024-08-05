part of 'outofstockcount_bloc.dart';

@freezed
class OutofstockcountState with _$OutofstockcountState {
  const factory OutofstockcountState.getOutOfStockCountState(
      {required GetOutOfStockCountModel? count}) = GetOutOfStockCountState;

  const factory OutofstockcountState.outOfStockFailedState() =
      OutOfStockFailedState;

  factory OutofstockcountState.initial() =>
      const OutofstockcountState.getOutOfStockCountState(count: null);
}
