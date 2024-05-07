part of 'asset_adding_approval_and_rject_bloc_bloc.dart';

@freezed
class AssetAddingApprovalAndRjectBlocState
    with _$AssetAddingApprovalAndRjectBlocState {
  const factory AssetAddingApprovalAndRjectBlocState.assetAddingApprvalState(
      {required AssetAddRespOutModel? response,
      required bool isApproval}) = AssetAddingApprovalStates;

  const factory AssetAddingApprovalAndRjectBlocState.assetAddingApprovalFailedState() =
      AssetAddingApprovalFailedState;

  const factory AssetAddingApprovalAndRjectBlocState.assetAddingApprovalLoadingState() =
      AssetAddingApprovalLoadingState;

  factory AssetAddingApprovalAndRjectBlocState.initial() =>
      const AssetAddingApprovalAndRjectBlocState.assetAddingApprvalState(
          response: null, isApproval: false);
}
