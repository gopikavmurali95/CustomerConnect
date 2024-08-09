part of 'home_graph_switch_cubit.dart';

@freezed
class HomeGraphSwitchState with _$HomeGraphSwitchState {
  const factory HomeGraphSwitchState.switchGraphState(
      {required HomeGraphModel graph}) = SwitchGraphState;

  factory HomeGraphSwitchState.initial() => HomeGraphSwitchState.switchGraphState(
      graph: /* HomeGraphModel(
            mTitle: 'Routes',
            ftitle: "Days Started",
            ltitle: "Days Not Started",
            totalCount: 0,
            completedCount: 0,
            graphTitle: 'Active Routes',
            cColors: const Color(0xffefbd3b),
            pColor: const Color(0xffefbd3b).withOpacity(.25),
            tileColor: const LinearGradient(colors: [
              Color(0xffefbd3b),
              Color(0xffd3a11d),
            ])), */
          homegraphList[0]);
}
