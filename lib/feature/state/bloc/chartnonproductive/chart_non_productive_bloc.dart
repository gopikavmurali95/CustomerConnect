import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/chart_non_productive_model/chart_non_productive_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'chart_non_productive_event.dart';
part 'chart_non_productive_state.dart';
part 'chart_non_productive_bloc.freezed.dart';

@injectable
class ChartNonProductiveBloc
    extends Bloc<ChartNonProductiveEvent, ChartNonProductiveState> {
  final IHomeChartsRepo nonProductiveRepo;
  ChartNonProductiveBloc(this.nonProductiveRepo)
      : super(ChartNonProductiveState.initial()) {
    on<GetChartNonProductiveDataEvent>((event, emit) async {
      Either<MainFailures, ChartNonProductiveModel> data =
          await nonProductiveRepo.nonProductiveChart(
              event.fromDate, event.toDate,event.userId);
      emit(data.fold(
          (l) => GetChartNonProductiveDataState(
              nonProductiveData:
                  ChartNonProductiveModel(planned: '0', total: '0')),
          (r) => GetChartNonProductiveDataState(nonProductiveData: r)));
    });
  }
}
