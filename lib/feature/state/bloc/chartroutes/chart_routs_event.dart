part of 'chart_routs_bloc.dart';

@freezed
class ChartRoutsEvent with _$ChartRoutsEvent {
  const factory ChartRoutsEvent.getchartRouteDataEvent({required String date, required String userId}) =
      GetchartRouteDataEvent;
}
