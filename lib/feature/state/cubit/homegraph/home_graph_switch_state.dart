part of 'home_graph_switch_cubit.dart';

@freezed
class HomeGraphSwitchState with _$HomeGraphSwitchState {
  const factory HomeGraphSwitchState.switchGraphState(
      {required HomeGraphModel graph}) = SwitchGraphState;

  factory HomeGraphSwitchState.initial() =>
      HomeGraphSwitchState.switchGraphState(graph: homegraphList[0]);
}
