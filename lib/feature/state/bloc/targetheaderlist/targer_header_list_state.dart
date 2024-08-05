part of 'targer_header_list_bloc.dart';

@freezed
class TargerHeaderListState with _$TargerHeaderListState {
  const factory TargerHeaderListState.getTargetHeaderItemsState(
          {required List<TargetHeaderListModel>? header}) =
      GetTargetHeaderItemsState;

  const factory TargerHeaderListState.targetHeaderItemsFailed() =
      TargetHeaderItemsFailed;

  factory TargerHeaderListState.initial() =>
      const TargerHeaderListState.getTargetHeaderItemsState(header: null);
}
