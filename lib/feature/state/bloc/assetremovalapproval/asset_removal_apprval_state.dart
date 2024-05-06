part of 'asset_removal_apprval_bloc.dart';

@freezed
class AssetRemovalApprvalState with _$AssetRemovalApprvalState {
  const factory AssetRemovalApprvalState.assetRemovalApprovedState(
          {required AssetRemovalApproveOutModel? response}) =
      AssetRemovalApprovedState;

  const factory AssetRemovalApprvalState.assetRemovalAApproveFailedState() =
      AssetRemovalAApproveFailedState;
  const factory AssetRemovalApprvalState.assetRemovalApproveLoadingState() =
      AssetRemovalApproveLoadingState;

  factory AssetRemovalApprvalState.initial() =>
      const AssetRemovalApprvalState.assetRemovalApprovedState(response: null);
}
