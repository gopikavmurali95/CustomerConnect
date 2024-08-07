part of 'chart_routs_bloc.dart';

@freezed
class ChartRoutsState with _$ChartRoutsState {
  const factory ChartRoutsState.getChartRoutesDataState(
      {required ChartRoutesModel routedata}) = GetChartRoutesDataState;

  const factory ChartRoutsState.routeChartFailedState(
      {required ChartRoutesModel routedata}) = RouteChartFailedState;

  factory ChartRoutsState.initial() => ChartRoutsState.getChartRoutesDataState(
      routedata:
          ChartRoutesModel(active: '0', daysNotStarted: '0', daysStarted: '0'));
}
