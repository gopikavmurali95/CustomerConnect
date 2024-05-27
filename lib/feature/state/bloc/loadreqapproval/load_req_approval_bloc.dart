import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/models/load_request_approval/LoadReqInApprovalModel.dart';
import 'package:customer_connect/feature/data/models/load_request_approval_out_model/LoadRequestApprovalOutModel.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/abstractrepo/abstractrepo.dart';
part 'load_req_approval_event.dart';
part 'load_req_approval_state.dart';
part 'load_req_approval_bloc.freezed.dart';

@injectable
class LoadReqApprovalBloc
    extends Bloc<LoadReqApprovalEvent, LoadReqApprovalState> {
  final ILoadRequestApprovalRepo loadReqApprovalRepo;

  LoadReqApprovalBloc(this.loadReqApprovalRepo)
      : super(LoadReqApprovalState.initial()) {
    on<ApprovloadReqEvent>((event, emit) async {
      Either<MainFailures, LoadRequestApprovalOutModel> aprove =
          await loadReqApprovalRepo.loadApproval(event.approval);
      emit(aprove.fold((l) => const LoadReqApprovalFailedState(),
          (r) => LoadReqApprovalSuccessState(response: r)));
      // TODO: implement event handler
    });
    on<ApprovLoadingReqEvent>((event, emit) {
      emit(const LoadReqApprovalLoadingState());
    });
    on<ClearLoadReqApprovalEvent>((event, emit) {
      emit(const LoadReqApprovalSuccessState(response: null));
    });
  }
}
