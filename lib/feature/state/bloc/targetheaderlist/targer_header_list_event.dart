part of 'targer_header_list_bloc.dart';

@freezed
class TargerHeaderListEvent with _$TargerHeaderListEvent {
  const factory TargerHeaderListEvent.getTargetHeaderItemsEvent(
      {required String fromDate,
      required String searchQuery}) = GetTargetHeaderItemsEvent;

  const factory TargerHeaderListEvent.clearTargetHeaderItems() =
      ClearTargetHeaderItems;
}
