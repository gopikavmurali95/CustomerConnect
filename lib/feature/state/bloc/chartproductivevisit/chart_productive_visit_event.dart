part of 'chart_productive_visit_bloc.dart';

@freezed
class ChartProductiveVisitEvent with _$ChartProductiveVisitEvent {
  const factory ChartProductiveVisitEvent.getChartPRoductiveVisitDataEvent(
      {required String fromDate,
      required String toDate}) = GetChartPRoductiveVisitDataEvent;
}
