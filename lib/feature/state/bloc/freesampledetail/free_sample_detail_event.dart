part of 'free_sample_detail_bloc.dart';

@freezed
class FreeSampleDetailEvent with _$FreeSampleDetailEvent {
  const factory FreeSampleDetailEvent.getFreeSampleDetailsEvent(
      {required String headerID,
      required String searchQuery}) = GetFreeSampleDetailsEvent;

  const factory FreeSampleDetailEvent.clearFreeSampleDetailEvent() =
      ClearFreeSampleDetailEvent;
}
