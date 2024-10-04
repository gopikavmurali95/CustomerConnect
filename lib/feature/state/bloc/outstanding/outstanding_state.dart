part of 'outstanding_bloc.dart';

@freezed
class OutstandingState with _$OutstandingState {
  const factory OutstandingState.getOutstandingDataState(
      {required OutstandingCountModel? counts}) = GetOutstandingDataState;

  const factory OutstandingState.outstandingFailedState() =
      OutstandingFailedState;

  factory OutstandingState.initial() =>
      const OutstandingState.getOutstandingDataState(counts: null);
}
