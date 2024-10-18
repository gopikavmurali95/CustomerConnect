part of 'free_sample_detail_bloc.dart';

@freezed
class FreeSampleDetailState with _$FreeSampleDetailState {
  const factory FreeSampleDetailState.getFreeSampleDetailState(
          {required List<FreeSampleApprovalDetailModel>? details}) =
      GetFreeSampleDetailState;

  const factory FreeSampleDetailState.freesampleDetailFailedState() =
      FreesampleDetailFailedState;

  factory FreeSampleDetailState.initial() =>
      const FreeSampleDetailState.getFreeSampleDetailState(details: null);
}
