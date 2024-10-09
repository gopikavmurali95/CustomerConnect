part of 'update_download_percentage_cubit.dart';

@freezed
class UpdateDownloadPercentageState with _$UpdateDownloadPercentageState {
  const factory UpdateDownloadPercentageState.downloadPercentageState(
      {required int percentage}) = DownloadPercentageState;

  factory UpdateDownloadPercentageState.initial() =>
      const UpdateDownloadPercentageState.downloadPercentageState(
          percentage: 0);
}
