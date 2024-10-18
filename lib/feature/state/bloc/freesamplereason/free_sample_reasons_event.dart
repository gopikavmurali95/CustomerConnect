part of 'free_sample_reasons_bloc.dart';

@freezed
class FreeSampleReasonsEvent with _$FreeSampleReasonsEvent {
  const factory FreeSampleReasonsEvent.getFreeSampleReasonsEvent(
      {required String rsntype,
      required String userID}) = GetFreeSampleReasonsEvent;

  const factory FreeSampleReasonsEvent.clearFreeSampleReasonsEvent() =
      ClearFreeSampleReasonsEvent;
}
