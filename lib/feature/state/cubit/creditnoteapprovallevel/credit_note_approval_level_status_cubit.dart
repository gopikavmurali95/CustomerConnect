import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/dispute_approval_status_model/dispute_approval_status_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'credit_note_approval_level_status_state.dart';
part 'credit_note_approval_level_status_cubit.freezed.dart';

@injectable
class CreditNoteApprovalLevelStatusCubit
    extends Cubit<CreditNoteApprovalLevelStatusState> {
  final ICreditNoteApprovalRepo creditNoteApprovalRepo;
  CreditNoteApprovalLevelStatusCubit(this.creditNoteApprovalRepo)
      : super(CreditNoteApprovalLevelStatusState.initial());

  void checkApprovalstatusLevel(String usrID, bool isApproval) async {
    Either<MainFailures, DisputeApprovalStatusModel> status =
        await creditNoteApprovalRepo.getcreditNoteApprovalStatus(usrID);

    emit(status.fold(
        (l) => const CreditNoteApprovalLevelFailedState(),
        (r) => CreditNoteApprovalStatusLevelState(
            statuslevel: r, isApproval: isApproval)));
  }

  void addCreditNoteStatusLoaingEvent() {
    emit(const CreditNoteApprovalLevelLoadingState());
  }
}
