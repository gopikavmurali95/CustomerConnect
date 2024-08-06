part of 'daily_activity_expansion_cubit.dart';

@freezed
class DailyActivityExpansionState with _$DailyActivityExpansionState {
  const factory DailyActivityExpansionState.expandedContainersState(
      {required List<bool> expandedList}) = ExpandedContainersState;

  factory DailyActivityExpansionState.initial() =>
      const DailyActivityExpansionState.expandedContainersState(
          expandedList: []);
}
