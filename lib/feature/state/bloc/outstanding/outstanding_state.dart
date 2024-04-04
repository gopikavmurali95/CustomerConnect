part of 'outstanding_bloc.dart';

@freezed
class OutstandingState with _$OutstandingState {
  const factory OutstandingState.getOutstandingDataState(
      {required List<OutStandOutModel>? headers,
      required OutstandingCountModel? counts}) = GetOutstandingDataState;

  const factory OutstandingState.outstandingFailedState() =
      OutstandingFailedState;

  factory OutstandingState.initial() =>
      const OutstandingState.getOutstandingDataState(
          headers: null, counts: null);
}
