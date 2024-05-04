part of 'asset_adding_approval_and_rject_bloc_bloc.dart';

@freezed
class AssetAddingApprovalAndRjectBlocEvent
    with _$AssetAddingApprovalAndRjectBlocEvent {
  const factory AssetAddingApprovalAndRjectBlocEvent.assetAddingApproveEvent(
      {required AssetAddApprovalInModel approve}) = AssetAddingApproveEvent;

  const factory AssetAddingApprovalAndRjectBlocEvent.addAssetAddingApproveLoadingEvent() =
      AddAssetAddingApproveLoadingEvent;

  const factory AssetAddingApprovalAndRjectBlocEvent.clearAssetAddingApprovalEvent() =
      ClearAssetAddingApprovalEvent;
}
