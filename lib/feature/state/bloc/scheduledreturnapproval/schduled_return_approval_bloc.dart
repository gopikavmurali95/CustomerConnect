import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/scheduled_return_approval_in_model/scheduled_return_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/scheduled_return_approval_out_model/scheduled_return_approval_out_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'schduled_return_approval_event.dart';
part 'schduled_return_approval_state.dart';
part 'schduled_return_approval_bloc.freezed.dart';

@injectable
class SchduledReturnApprovalBloc
    extends Bloc<SchduledReturnApprovalEvent, SchduledReturnApprovalState> {
  final IScheduledReturnApprovalRepo scheduledReturnApprovalRepo;
  SchduledReturnApprovalBloc(this.scheduledReturnApprovalRepo)
      : super(SchduledReturnApprovalState.initial()) {
    on<APProveOrRejectScheduledReturnEvent>((event, emit) async {
      Either<MainFailures, ScheduledReturnApprovalOutModel> approve =
          await scheduledReturnApprovalRepo
              .scheduledReturnApproval(event.approve);

      emit(approve.fold((l) => const SchduledReturnApprovalFailedState(),
          (r) => ScheduledReturnApprovalStatusStates(status: r)));
    });

    on<ClearScApprovalEvent>((event, emit) {
      emit(const ScheduledReturnApprovalStatusStates(status: null));
    });

    on<AddScheduledReturnApprovalLoadingEvent>((event, emit) {
      emit(const ScheduledReturnLoadingState());
    });
  }
}
