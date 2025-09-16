part of 'chart_non_productive_bloc.dart';

@freezed
class ChartNonProductiveEvent with _$ChartNonProductiveEvent {
  const factory ChartNonProductiveEvent.getChartNonProductiveDataEvent(
      {required String fromDate,
      required String toDate, required String userId}) = GetChartNonProductiveDataEvent;
}
