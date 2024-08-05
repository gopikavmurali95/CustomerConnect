part of 'target_details_graph_amt_bloc.dart';

@freezed
class TargetDetailsGraphAmtEvent with _$TargetDetailsGraphAmtEvent {
  const factory TargetDetailsGraphAmtEvent.getTargetGraphAmtEvent(
      {required String fromDate,
      required String rotID}) = GetTargetGraphAmtEvent;

  const factory TargetDetailsGraphAmtEvent.clearGraphAmount() =
      ClearGraphAmount;
}
