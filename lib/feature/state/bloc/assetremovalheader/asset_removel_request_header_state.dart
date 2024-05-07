part of 'asset_removel_request_header_bloc.dart';

@freezed
class AssetRemovelRequestHeaderState with _$AssetRemovelRequestHeaderState {
  const factory AssetRemovelRequestHeaderState.getAssetRemovalRequestHEadersState(
          {required List<AssetRemovalRequestHeaderModel>? headers}) =
      GetAssetRemovalRequestHEadersState;
  const factory AssetRemovelRequestHeaderState.assetRemovalRequestHeaderFailedState() =
      AssetRemovalRequestHeaderFailedState;

  factory AssetRemovelRequestHeaderState.initial() =>
      const AssetRemovelRequestHeaderState.getAssetRemovalRequestHEadersState(
          headers: null);
}
