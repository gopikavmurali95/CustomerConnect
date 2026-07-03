import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/chart_routes_model/chart_routes_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chart_routs_event.dart';
part 'chart_routs_state.dart';
part 'chart_routs_bloc.freezed.dart';

@injectable
class ChartRoutsBloc extends Bloc<ChartRoutsEvent, ChartRoutsState> {
  final IHomeChartsRepo homeChartsRepo;
  ChartRoutsBloc(this.homeChartsRepo) : super(ChartRoutsState.initial()) {
    on<GetchartRouteDataEvent>((event, emit) async {
      Either<MainFailures, ChartRoutesModel> routes = await homeChartsRepo
          .routesChart(event.date, event.date, event.userId);

      emit(routes.fold(
          (l) {
            log('GetCCRouteCount - Active Routes Count: 0 (API failed)');
            return GetChartRoutesDataState(
                routedata: ChartRoutesModel(
                    active: '0', daysNotStarted: '0', daysStarted: '0'));
          },
          (r) {
            log('GetCCRouteCount - Active Routes Count: ${r.active ?? '0'}');
            return GetChartRoutesDataState(routedata: r);
          }));
    });
  }
}
