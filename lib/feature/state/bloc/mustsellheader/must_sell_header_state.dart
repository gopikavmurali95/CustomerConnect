part of 'must_sell_header_bloc.dart';

@freezed
class MustSellHeaderState with _$MustSellHeaderState {
  const factory MustSellHeaderState.getMustsellHeadersState(
      {required List<MustSellHeaderModel>? headers}) = GetMustsellHeadersState;
  const factory MustSellHeaderState.mustSellHeadersFailedState() =
      MustSellHeadersFailedState;

  factory MustSellHeaderState.initial() =>
      const MustSellHeaderState.getMustsellHeadersState(headers: null);
}
