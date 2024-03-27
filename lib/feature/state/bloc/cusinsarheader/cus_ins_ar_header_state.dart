part of 'cus_ins_ar_header_bloc.dart';

@freezed
class CusInsArHeaderState with _$CusInsArHeaderState {
  const factory CusInsArHeaderState.getArHeadersState(
      {required List<CusInsArHEaderModel>? headers,
      required ArTotalCollectionModel? artotals}) = GetArHeadersState;

  const factory CusInsArHeaderState.getArHeadersFailedState() =
      GetArHeadersFailedState;

  factory CusInsArHeaderState.initial() =>
      const CusInsArHeaderState.getArHeadersState(
          headers: null, artotals: null);
}
