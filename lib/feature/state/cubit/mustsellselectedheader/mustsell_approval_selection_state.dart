part of 'mustsell_approval_selection_cubit.dart';

@freezed
class MustsellApprovalSelectionState with _$MustsellApprovalSelectionState {
  const factory MustsellApprovalSelectionState.mustSellApprovalSelectedHeadersState(
          {required List<MustSellIJsonModel> selected}) =
      MustSellApprovalSelectedHeadersState;

  factory MustsellApprovalSelectionState.initial() =>
      const MustsellApprovalSelectionState.mustSellApprovalSelectedHeadersState(
          selected: []);
}
