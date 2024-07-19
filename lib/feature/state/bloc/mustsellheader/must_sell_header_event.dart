part of 'must_sell_header_bloc.dart';

@freezed
class MustSellHeaderEvent with _$MustSellHeaderEvent {
  const factory MustSellHeaderEvent.getMustSellHeadersEvent(
      {required String mode,
      required String searchQuery}) = GetMustSellHeadersEvent;

  const factory MustSellHeaderEvent.clearMustSellHeadersEvent() =
      ClearMustSellHeadersEvent;
}
