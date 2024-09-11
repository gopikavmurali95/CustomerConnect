import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_out_standing_in_model/cus_out_standing_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_outstanding_count_model/cus_outstanding_count_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cus_out_standing_count_event.dart';
part 'cus_out_standing_count_state.dart';
part 'cus_out_standing_count_bloc.freezed.dart';

@injectable
class CusOutStandingCountBloc
    extends Bloc<CusOutStandingCountEvent, CusOutStandingCountState> {
  final ICusOutstandingRepo cusOutstandingRepo;
  CusOutStandingCountBloc(this.cusOutstandingRepo)
      : super(CusOutStandingCountState.initial()) {
    on<GetCusOutstandingCOuntEvent>((event, emit) async {
      Either<MainFailures, CusOutstandingCountModel> counts =
          await cusOutstandingRepo.getOutStandingCounts(event.outIn);

      emit(counts.fold((l) => const CusOutStatndingCountFailedState(),
          (r) => GetCusOutStandingCountState(counts: r)));
    });

    on<ClearCusOutStandingCountEvent>((event, emit) {
      emit(const GetCusOutStandingCountState(counts: null));
    });
  }
}
