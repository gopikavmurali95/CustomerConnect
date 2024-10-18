part of 'free_sample_header_bloc.dart';

@freezed
class FreeSampleHeaderEvent with _$FreeSampleHeaderEvent {
  const factory FreeSampleHeaderEvent.getFreeSampleHeadersEvent(
      {required String mode,
      required String searchQuery}) = GetFreeSampleHeadersEvent;
  const factory FreeSampleHeaderEvent.clearFreeSampleheadersEvent() =
      ClearFreeSampleheadersEvent;
}
