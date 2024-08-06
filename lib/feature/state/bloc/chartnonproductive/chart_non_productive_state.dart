part of 'chart_non_productive_bloc.dart';

@freezed
class ChartNonProductiveState with _$ChartNonProductiveState {
  const factory ChartNonProductiveState.getChartNonProductiveDataState(
          {required ChartNonProductiveModel nonProductiveData}) =
      GetChartNonProductiveDataState;

  factory ChartNonProductiveState.initial() =>
      ChartNonProductiveState.getChartNonProductiveDataState(
          nonProductiveData: ChartNonProductiveModel(
              planned: '0', total: '0', unplanned: '0'));
}
