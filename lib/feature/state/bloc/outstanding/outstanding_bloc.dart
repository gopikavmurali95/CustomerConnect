import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/out_standing_header/OutStandOutModel.dart';
import 'package:customer_connect/feature/data/models/out_standing_header/OutStandingHeaderModel.dart';
import 'package:customer_connect/feature/data/models/outstanding_count_model/outstanding_count_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'outstanding_event.dart';
part 'outstanding_state.dart';
part 'outstanding_bloc.freezed.dart';

@injectable
class OutstandingBloc extends Bloc<OutstandingEvent, OutstandingState> {
  final IOutStandingHeaderRepo outStandingHeaderRepo;
  OutstandingBloc(this.outStandingHeaderRepo)
      : super(OutstandingState.initial()) {
    on<GetOutstandingDataEvent>((event, emit) async {
      Either<MainFailures, List<OutStandOutModel>> headers =
          await outStandingHeaderRepo.getOutStandingHeaders(event.outIn);
      Either<MainFailures, OutstandingCountModel> counts =
          await outStandingHeaderRepo.getoutstandingTotal(event.outIn);
      emit(
        headers.fold(
          (l) => const OutstandingFailedState(),
          (r) => counts.fold(
            (l) => const OutstandingFailedState(),
            (c) => GetOutstandingDataState(headers: r, counts: c),
          ),
        ),
      );
    });

    on<ClearOutStandingEvent>((event, emit) {
      emit(const GetOutstandingDataState(headers: null, counts: null));
    });
  }
}
