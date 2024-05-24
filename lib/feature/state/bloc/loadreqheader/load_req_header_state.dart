part of 'load_req_header_bloc.dart';

@freezed
class LoadReqHeaderState with _$LoadReqHeaderState {
  const factory LoadReqHeaderState.loadReqheadSuccessState(
      {required List<LoadReqHeaderModel>? loadlist}) = LoadReqheadSuccessState;
  const factory LoadReqHeaderState.loadReqheadFailedState() =
      LoadReqheadFailedState;
  factory LoadReqHeaderState.initial() =>
      const LoadReqHeaderState.loadReqheadSuccessState(loadlist: null);
}
