import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/chart_planned_visits_model/chart_planned_visits_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chart_planned_visits_event.dart';
part 'chart_planned_visits_state.dart';
part 'chart_planned_visits_bloc.freezed.dart';

@injectable
class ChartPlannedVisitsBloc
    extends Bloc<ChartPlannedVisitsEvent, ChartPlannedVisitsState> {
  final IHomeChartsRepo homeChartsRepo;
  ChartPlannedVisitsBloc(this.homeChartsRepo)
      : super(ChartPlannedVisitsState.initial()) {
    on<GetChartPlannedVisitsEvent>((event, emit) async {
      Either<MainFailures, ChartPlannedVisitsModel> planned =
          await homeChartsRepo.plannedVisitsChart(event.date, event.date, event.userId);

      emit(planned.fold(
          (l) => GetChartPlannedVisitDataState(
              data: ChartPlannedVisitsModel(
                  pending: '0', planned: '0', visited: '0')),
          (r) => GetChartPlannedVisitDataState(data: r)));
    });
  }
}
