part of 'assets_tracked_count_bloc.dart';

@freezed
class AssetsTrackedCountState with _$AssetsTrackedCountState {
  const factory AssetsTrackedCountState.assetsTrackedCountSuccessState(
          {required AssetsTrackedInMerchModel? assetsTracked}) =
      AssetsTrackedCountSuccessState;

  const factory AssetsTrackedCountState.assetsTrackedCountFailedState() =
      AssetsTrackedCountFailedState;

  factory AssetsTrackedCountState.initial() =>
      const AssetsTrackedCountState.assetsTrackedCountSuccessState(
          assetsTracked: null);
}
