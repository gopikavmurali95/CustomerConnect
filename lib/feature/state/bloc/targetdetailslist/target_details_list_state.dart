part of 'target_details_list_bloc.dart';

@freezed
class TargetDetailsListState with _$TargetDetailsListState {
  const factory TargetDetailsListState.getTargetDetailsListState(
          {required List<TargetDetailsListModel>? details}) =
      GetTargetDetailsListState;

  const factory TargetDetailsListState.getTargetDetailsListFailed() =
      GetTargetDetailsListFailed;

  factory TargetDetailsListState.initial() =>
      const TargetDetailsListState.getTargetDetailsListState(details: null);
}
