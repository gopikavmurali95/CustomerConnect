part of 'van_to_van_approval_bloc.dart';

@freezed
class VanToVanApprovalState with _$VanToVanApprovalState {
  const factory VanToVanApprovalState.getVanToVanApproval(
      {required VanToVanApprovalModel? headers}) = GetVanToVanApprovalState;

  const factory VanToVanApprovalState.vanToVanApprovalFailedstate() =
      VanToVanApprovalFailedstate;

  const factory VanToVanApprovalState.vanToVanApprovalLoadingState() =
      VanToVanLoadingState;

  factory VanToVanApprovalState.initial() =>
      const VanToVanApprovalState.getVanToVanApproval(headers: null);
}
