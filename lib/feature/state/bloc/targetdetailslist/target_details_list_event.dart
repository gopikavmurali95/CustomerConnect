part of 'target_details_list_bloc.dart';

@freezed
class TargetDetailsListEvent with _$TargetDetailsListEvent {
  const factory TargetDetailsListEvent.getTargetDetailsListEvent(
      {required String fromDate,
      required String rotID,
      required String searchQuery}) = GetTargetDetailsListEvent;

  const factory TargetDetailsListEvent.clearTargetDetailsList() =
      ClearTargetDetailsList;
}
