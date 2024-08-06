import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/chart_actual_visit_model/chart_actual_visit_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chart_actual_visits_event.dart';
part 'chart_actual_visits_state.dart';
part 'chart_actual_visits_bloc.freezed.dart';

@injectable
class ChartActualVisitsBloc
    extends Bloc<ChartActualVisitsEvent, ChartActualVisitsState> {
  final IHomeChartsRepo homeChartsRepo;
  ChartActualVisitsBloc(this.homeChartsRepo)
      : super(ChartActualVisitsState.initial()) {
    on<GetChartActualVisitsDataEvent>((event, emit) async {
      Either<MainFailures, ChartActualVisitModel> visit =
          await homeChartsRepo.actualVisitsChart(event.date, event.date);

      emit(visit.fold(
          (l) => GetChartActualVisitsDataState(
              data: ChartActualVisitModel(
                  planned: '0', total: '0', unplanned: '0')),
          (r) => GetChartActualVisitsDataState(data: r)));
    });
  }
}
