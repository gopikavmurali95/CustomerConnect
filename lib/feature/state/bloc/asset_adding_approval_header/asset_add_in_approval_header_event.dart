part of 'asset_add_in_approval_header_bloc.dart';

@freezed
class AssetAddInApprovalHeaderEvent with _$AssetAddInApprovalHeaderEvent {
  const factory AssetAddInApprovalHeaderEvent.getallAssetAddingRequestHeadersEvent(
      {required String userId}) = GetallAssetAddingRequestHeadersEvent;

  const factory AssetAddInApprovalHeaderEvent.clearAllAssetAddRequestHeadersState() =
      ClearAllRequestHeadersState;
}
