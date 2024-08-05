part of 'rarget_details_graph_qty_bloc.dart';

@freezed
class RargetDetailsGraphQtyEvent with _$RargetDetailsGraphQtyEvent {
  const factory RargetDetailsGraphQtyEvent.getTargetGraphQtyEvent(
      {required String fromDate,
      required String rotID}) = GetTargetGraphQtyEvent;

  const factory RargetDetailsGraphQtyEvent.clearTargetGraphQuantity() =
      ClearTargetGraphQuantity;
}
