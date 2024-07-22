import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/must_sell_approve_in_model/must_sell_approve_in_model.dart';
import 'package:customer_connect/feature/data/models/must_sell_approve_resp_model/must_sell_approve_resp_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'must_sell_approve_event.dart';
part 'must_sell_approve_state.dart';
part 'must_sell_approve_bloc.freezed.dart';

@injectable
class MustSellApproveBloc
    extends Bloc<MustSellApproveEvent, MustSellApproveState> {
  final IMustSellRepo mustSellRepo;
  MustSellApproveBloc(this.mustSellRepo)
      : super(MustSellApproveState.initial()) {
    on<ApproveMustSellEvent>((event, emit) async {
      Either<MainFailures, MustSellApproveRespModel> resp =
          await mustSellRepo.mustSellApprove(event.approve);

      emit(resp.fold((l) => const MustSellApproveFailedState(),
          (r) => MustSellApproveStatusState(resp: r)));
    });
    on<ClearMustSellApproveEvent>((event, emit) {
      emit(const MustSellApproveStatusState(resp: null));
    });
    on<MustSellLoadingEvent>((event, emit) {
      emit(const MustSellApproveLoadingEvent());
    });
  }
}
