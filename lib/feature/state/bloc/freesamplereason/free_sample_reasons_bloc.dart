import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/free_sample_reson_model/free_sample_reson_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'free_sample_reasons_event.dart';
part 'free_sample_reasons_state.dart';
part 'free_sample_reasons_bloc.freezed.dart';

@injectable
class FreeSampleReasonsBloc
    extends Bloc<FreeSampleReasonsEvent, FreeSampleReasonsState> {
  final IFreeSampleApprovalRepo freeSampleApprovalRepo;
  FreeSampleReasonsBloc(this.freeSampleApprovalRepo)
      : super(FreeSampleReasonsState.initial()) {
    on<GetFreeSampleReasonsEvent>((event, emit) async {
      Either<MainFailures, List<FreeSampleResonModel>> reasons =
          await freeSampleApprovalRepo.getFreeSamplereasons(
              event.userID, event.rsntype);

      emit(reasons.fold((l) => const FreeSampleReasonsFailedState(),
          (r) => GetFreesampleReasonsState(reasons: r)));
    });
    on<ClearFreeSampleReasonsEvent>((event, emit) {
      emit(const GetFreesampleReasonsState(reasons: null));
    });
  }
}
