part of 'chart_actual_visits_bloc.dart';

@freezed
class ChartActualVisitsState with _$ChartActualVisitsState {
  const factory ChartActualVisitsState.getChartActualVisitsDataState(
      {required ChartActualVisitModel data}) = GetChartActualVisitsDataState;

  factory ChartActualVisitsState.initial() =>
      ChartActualVisitsState.getChartActualVisitsDataState(
          data:
              ChartActualVisitModel(planned: '0', total: '0', unplanned: '0'));
}
