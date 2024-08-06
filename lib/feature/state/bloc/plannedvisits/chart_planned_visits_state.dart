part of 'chart_planned_visits_bloc.dart';

@freezed
class ChartPlannedVisitsState with _$ChartPlannedVisitsState {
  const factory ChartPlannedVisitsState.getChartPlannedVisitDataState(
      {required ChartPlannedVisitsModel data}) = GetChartPlannedVisitDataState;

  const factory ChartPlannedVisitsState.plannedVisitFailedState(
      {required ChartPlannedVisitsModel data}) = PlannedVisitFailedState;

  factory ChartPlannedVisitsState.initial() =>
      ChartPlannedVisitsState.getChartPlannedVisitDataState(
          data: ChartPlannedVisitsModel(
              pending: '0', planned: '0', visited: '0'));
}
