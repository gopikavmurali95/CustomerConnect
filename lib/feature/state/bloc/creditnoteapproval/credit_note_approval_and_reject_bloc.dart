import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/dispute_approval_resp_model/dispute_approval_resp_model.dart';
import 'package:customer_connect/feature/data/models/dispute_invoice_approve_in_model/dispute_invoice_approve_in_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'credit_note_approval_and_reject_event.dart';
part 'credit_note_approval_and_reject_state.dart';
part 'credit_note_approval_and_reject_bloc.freezed.dart';

@injectable
class CreditNoteApprovalAndRejectBloc extends Bloc<
    CreditNoteApprovalAndRejectEvent, CreditNoteApprovalAndRejectState> {
  final ICreditNoteApprovalRepo creditNoteApprovalRepo;
  CreditNoteApprovalAndRejectBloc(this.creditNoteApprovalRepo)
      : super(CreditNoteApprovalAndRejectState.initial()) {
    on<CreditNoteTakeActionEvent>((event, emit) async {
      if (event.approve.nextLevel!.isNotEmpty) {
        Either<MainFailures, DisputeApprovalRespModel> status =
            await creditNoteApprovalRepo.creditNoteApproval(event.approve);
        emit(
          status.fold(
            (l) => const CreditNoteApprovalFailedState(),
            (r) => CreditNoteActionTakenState(resp: r, isApprove: true),
          ),
        );
      } else {
        Either<MainFailures, DisputeApprovalRespModel> status =
            await creditNoteApprovalRepo.creditNoteReject(event.approve);
        emit(
          status.fold(
            (l) => const CreditNoteApprovalFailedState(),
            (r) => CreditNoteActionTakenState(resp: r, isApprove: true),
          ),
        );
      }
    });

    on<CreditNoteApprovalClearEvent>((event, emit) {
      emit(const CreditNoteActionTakenState(resp: null, isApprove: null));
    });
    on<CreditNoteApprovalLoadingEvent>((event, emit) {
      emit(const CreditNoteApprovalLoadingState());
    });
  }
}
