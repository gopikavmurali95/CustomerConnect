import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/chart_productive_visit_model/chart_productive_visit_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chart_productive_visit_event.dart';
part 'chart_productive_visit_state.dart';
part 'chart_productive_visit_bloc.freezed.dart';

@injectable
class ChartProductiveVisitBloc
    extends Bloc<ChartProductiveVisitEvent, ChartProductiveVisitState> {
  final IHomeChartsRepo productiveVisitRepo;
  ChartProductiveVisitBloc(this.productiveVisitRepo)
      : super(ChartProductiveVisitState.initial()) {
    on<GetChartPRoductiveVisitDataEvent>((event, emit) async {
      Either<MainFailures, ChartProductiveVisitModel> productivevisitdata =
          await productiveVisitRepo.productiveChart(
              event.fromDate, event.toDate, event.userId);
      emit(productivevisitdata.fold(
          (l) => GetChartProductiveVisitDataSate(
              productiveVisitData: ChartProductiveVisitModel(
                  planned: '0', total: '0', unplanned: '0')),
          (r) => GetChartProductiveVisitDataSate(productiveVisitData: r)));
    });
  }
}
