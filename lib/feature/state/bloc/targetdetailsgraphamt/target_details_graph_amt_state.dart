part of 'target_details_graph_amt_bloc.dart';

@freezed
class TargetDetailsGraphAmtState with _$TargetDetailsGraphAmtState {
  const factory TargetDetailsGraphAmtState.getTargetGraphAmt(
      {required TargetDetailsGraphAmtModel? amount}) = GetTargetGraphAmt;

  const factory TargetDetailsGraphAmtState.getTargetGraphAmtFailed() =
      GetTargetGraphAmtFailed;

  factory TargetDetailsGraphAmtState.initial() =>
      const TargetDetailsGraphAmtState.getTargetGraphAmt(amount: null);
}
