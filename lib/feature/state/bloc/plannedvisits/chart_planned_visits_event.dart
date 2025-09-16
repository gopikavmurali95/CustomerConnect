part of 'chart_planned_visits_bloc.dart';

@freezed
class ChartPlannedVisitsEvent with _$ChartPlannedVisitsEvent {
  const factory ChartPlannedVisitsEvent.getChartPlannedVisitsEvent(
      {required String date, required String userId}) = GetChartPlannedVisitsEvent;
}
