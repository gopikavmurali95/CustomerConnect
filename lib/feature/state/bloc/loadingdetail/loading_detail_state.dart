part of 'loading_detail_bloc.dart';

@freezed
class LoadingDetailState with _$LoadingDetailState {
  const factory LoadingDetailState.getloadingDetail(
      {required List<LoadingDetailModel>? detail}) = GetloadingDetail;

  const factory LoadingDetailState.loadingDetailFailedState() =
      LoadingDetailFailedState;

  factory LoadingDetailState.initial() =>
      const LoadingDetailState.getloadingDetail(detail: null);
}
