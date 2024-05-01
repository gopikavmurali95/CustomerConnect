import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/dispute_approval_status_model/dispute_approval_status_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dispute_approval_status_level_cubit_state.dart';
part 'dispute_approval_status_level_cubit_cubit.freezed.dart';

@injectable
class DisputeApprovalStatusLevelCubitCubit
    extends Cubit<DisputeApprovalStatusLevelCubitState> {
  final IDisputeNoteApprovalRepo disputeNoteApprovalRepo;
  DisputeApprovalStatusLevelCubitCubit(this.disputeNoteApprovalRepo)
      : super(DisputeApprovalStatusLevelCubitState.initial());

  void checkApprovalstatusLevel(String usrID, bool isApproval) async {
    Either<MainFailures, DisputeApprovalStatusModel> status =
        await disputeNoteApprovalRepo.getDisputeApprovalStatus(usrID);

    emit(status.fold(
        (l) => const DisputStatusLevelFailedState(),
        (r) => GetDisputeApprovalStatusLevelState(
            statuslevel: r, isApproval: isApproval)));
  }

  void addDisputeStatusLoaingEvent() {
    emit(const DisputeApprovastatusLoadingState());
  }
}
