part of 'chart_actual_visits_bloc.dart';

@freezed
class ChartActualVisitsEvent with _$ChartActualVisitsEvent {
  const factory ChartActualVisitsEvent.getChartActualVisitsDataEvent(
      {required String date}) = GetChartActualVisitsDataEvent;
}
