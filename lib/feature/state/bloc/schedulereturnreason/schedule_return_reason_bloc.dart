import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/schedule_return_approval_reason_model/schedule_return_approval_reason_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'schedule_return_reason_event.dart';
part 'schedule_return_reason_state.dart';
part 'schedule_return_reason_bloc.freezed.dart';

@injectable
class ScheduleReturnReasonBloc
    extends Bloc<ScheduleReturnReasonEvent, ScheduleReturnReasonState> {
  final IScheduledReturnApprovalRepo reasonRepo;
  ScheduleReturnReasonBloc(this.reasonRepo)
      : super(ScheduleReturnReasonState.initial()) {
    on<ScheduleReturnSuccessEvent>((event, emit) async {
      Either<MainFailures, List<ScheduleReturnApprovalReasonModel>> reason =
          await reasonRepo.getScheduleReturnReasons(event.rsnType);
      emit(reason.fold((l) => const ScheduleReturnReasonFailedState(),
          (r) => GetScheduleReturnReasonState(reason: r)));
    });
    on<ClearScheduleReasonEvent>((event, emit) {
      emit(const GetScheduleReturnReasonState(reason: null));
    });
  }
}
