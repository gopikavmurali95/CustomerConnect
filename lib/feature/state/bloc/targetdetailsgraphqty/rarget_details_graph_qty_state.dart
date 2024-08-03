part of 'rarget_details_graph_qty_bloc.dart';

@freezed
class RargetDetailsGraphQtyState with _$RargetDetailsGraphQtyState {
  const factory RargetDetailsGraphQtyState.getTargetGraphQtyState(
      {required TargetDetailsGraphQtyModel? quantity}) = GetTargetGraphQtyState;

  const factory RargetDetailsGraphQtyState.getTargetGraphQtyFailed() =
      GetTargetGraphQtyFailed;

  factory RargetDetailsGraphQtyState.initial() =>
      const RargetDetailsGraphQtyState.getTargetGraphQtyState(quantity: null);
}
