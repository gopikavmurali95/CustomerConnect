part of 'asset_removal_apprval_bloc.dart';

@freezed
class AssetRemovalApprvalEvent with _$AssetRemovalApprvalEvent {
  const factory AssetRemovalApprvalEvent.approveAssetRemovalEvent(
          {required AssetRemovalApprovalInModel approve}) =
      ApproveAssetRemovalEvent;

  const factory AssetRemovalApprvalEvent.assetRemovalRejectEvent(
      {required AssetRemovalApprovalInModel reject}) = AssetRemovalRejectEvent;

  const factory AssetRemovalApprvalEvent.assetRemovalApprovalLoadingEvent() =
      AssetRemovalApprovalLoadingEvent;

  const factory AssetRemovalApprvalEvent.clearAssetRemovalapprovalEvent() =
      ClearAssetRemovalapprovalEvent;
}
