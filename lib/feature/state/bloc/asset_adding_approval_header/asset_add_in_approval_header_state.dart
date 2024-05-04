part of 'asset_add_in_approval_header_bloc.dart';

@freezed
class AssetAddInApprovalHeaderState with _$AssetAddInApprovalHeaderState {
  const factory AssetAddInApprovalHeaderState.getAllAssetAddingHeadersState(
          {required List<AssetAddRequestHeaderModel>? headers}) =
      GetAllAssetAddingHeadersState;

  const factory AssetAddInApprovalHeaderState.assetAddingHeaderFailedState() =
      AssetAddingHeaderFailedState;

  factory AssetAddInApprovalHeaderState.initial() =>
      const AssetAddInApprovalHeaderState.getAllAssetAddingHeadersState(
          headers: null);
}
