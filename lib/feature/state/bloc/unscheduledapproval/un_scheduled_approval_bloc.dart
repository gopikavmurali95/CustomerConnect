import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/un_scheduled_approval_resp_model/un_scheduled_approval_resp_model.dart';
import 'package:customer_connect/feature/data/models/un_scheduled_visit_approve_in_model/un_scheduled_visit_approve_in_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'un_scheduled_approval_event.dart';
part 'un_scheduled_approval_state.dart';
part 'un_scheduled_approval_bloc.freezed.dart';

@injectable
class UnScheduledApprovalBloc
    extends Bloc<UnScheduledApprovalEvent, UnScheduledApprovalState> {
  final IUnScheduledVisitApprovalRepo unScheduledVisitApprovalRepo;
  UnScheduledApprovalBloc(this.unScheduledVisitApprovalRepo)
      : super(UnScheduledApprovalState.initial()) {
    on<ApproveUnScheduledVisitEvent>((event, emit) async {
      Either<MainFailures, UnScheduledApprovalRespModel> resp =
          await unScheduledVisitApprovalRepo
              .approveUnscheduledVisit(event.approve);

      emit(resp.fold((l) => const UnScheduledVisitApprovalFailedState(),
          (r) => ApproveUnScheduledVisitState(resp: r)));
    });
    on<RejectUnScheduledEvent>((event, emit) async {
      Either<MainFailures, UnScheduledApprovalRespModel> resp =
          await unScheduledVisitApprovalRepo
              .rejectUnscheduledVisit(event.reject);

      emit(resp.fold((l) => const UnScheduledVisitApprovalFailedState(),
          (r) => RejectUnScheduledVisitState(resp: r)));
    });
    on<UnScheuledLoadingEvent>((event, emit) {
      emit(const UnScheduledApprovalLoadingEvent());
    });
  }
}
