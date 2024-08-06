part of 'chart_productive_visit_bloc.dart';

@freezed
class ChartProductiveVisitState with _$ChartProductiveVisitState {
  const factory ChartProductiveVisitState.getChartProductiveVisitDataSate(
          {required ChartProductiveVisitModel productiveVisitData}) =
      GetChartProductiveVisitDataSate;

  factory ChartProductiveVisitState.initial() =>
      ChartProductiveVisitState.getChartProductiveVisitDataSate(
          productiveVisitData: ChartProductiveVisitModel(
              planned: '0', total: '0', unplanned: '0'));
}
