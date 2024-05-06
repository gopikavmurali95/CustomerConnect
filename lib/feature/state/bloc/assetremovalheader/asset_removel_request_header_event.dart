part of 'asset_removel_request_header_bloc.dart';

@freezed
class AssetRemovelRequestHeaderEvent with _$AssetRemovelRequestHeaderEvent {
  const factory AssetRemovelRequestHeaderEvent.getAllAssetRemovalHeadersEvent(
      {required String userID}) = GetAllAssetRemovalHeadersEvent;

  const factory AssetRemovelRequestHeaderEvent.clearAssetRemovalHeaderEvent() =
      ClearAssetRemovalHeaderEvent;
}
