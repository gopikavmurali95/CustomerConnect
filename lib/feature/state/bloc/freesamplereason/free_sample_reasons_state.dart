part of 'free_sample_reasons_bloc.dart';

@freezed
class FreeSampleReasonsState with _$FreeSampleReasonsState {
  const factory FreeSampleReasonsState.getFreesampleReasonsState(
          {required List<FreeSampleResonModel>? reasons}) =
      GetFreesampleReasonsState;
  const factory FreeSampleReasonsState.freeSampleReasonsFailedState() =
      FreeSampleReasonsFailedState;

  factory FreeSampleReasonsState.initial() =>
      const FreeSampleReasonsState.getFreesampleReasonsState(reasons: null);
}
