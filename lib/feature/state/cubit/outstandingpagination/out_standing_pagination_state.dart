part of 'out_standing_pagination_cubit.dart';

@freezed
class OutStandingPaginationState with _$OutStandingPaginationState {
  const factory OutStandingPaginationState.getOutStandingHeadersPageState(
          {required List<OutStandOutModel>? headers}) =
      GetOutStandingHeadersPageState;

  factory OutStandingPaginationState.initial() =>
      const OutStandingPaginationState.getOutStandingHeadersPageState(
          headers: null);
}
