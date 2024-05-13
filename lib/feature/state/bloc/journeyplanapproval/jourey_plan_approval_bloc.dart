import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/journey_plan_approval_in_model/journey_plan_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/joutney_plan_approval_out_model/joutney_plan_approval_out_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'jourey_plan_approval_event.dart';
part 'jourey_plan_approval_state.dart';
part 'jourey_plan_approval_bloc.freezed.dart';

@injectable
class JoureyPlanApprovalBloc
    extends Bloc<JoureyPlanApprovalEvent, JoureyPlanApprovalState> {
  final IJourneyPlanApprovalRepo journeyPlanApprovalRepo;
  JoureyPlanApprovalBloc(this.journeyPlanApprovalRepo)
      : super(JoureyPlanApprovalState.initial()) {
    on<ApproveJourneyPlanEvent>((event, emit) async {
      Either<MainFailures, JoutneyPlanApprovalOutModel> approve =
          await journeyPlanApprovalRepo.journeyPlanApproval(event.approve);

      emit(approve.fold((l) => const ApproveJourneyPlanFailedState(),
          (r) => ApproveJourneyPlanState(approve: r)));
    });
    on<RejectaJOurneyPlanEvent>((event, emit) async {
      Either<MainFailures, JoutneyPlanApprovalOutModel> approve =
          await journeyPlanApprovalRepo.journeyPlanReject(event.reject);

      emit(approve.fold((l) => const ApproveJourneyPlanFailedState(),
          (r) => ApproveJourneyPlanState(approve: r)));
    });
    on<ClearJourneyPlanApprovalEvent>((event, emit) {
      emit(const ApproveJourneyPlanState(approve: null));
    });
    on<AddJourneyPlanApprovalLoadingEvent>((event, emit) {
      emit(const ApproveJourneyPlanLoadingState());
    });
  }
}
