part of 'free_sample_header_bloc.dart';

@freezed
class FreeSampleHeaderState with _$FreeSampleHeaderState {
  const factory FreeSampleHeaderState.getFreeSampleHeaderState(
          {required List<FreeSampleHeaderModel>? headers}) =
      GetFreeSampleHeaderState;
  const factory FreeSampleHeaderState.freesampleHeaderFailedState() =
      FreesampleHeaderFailedState;

  factory FreeSampleHeaderState.initial() =>
      const FreeSampleHeaderState.getFreeSampleHeaderState(headers: null);
}
