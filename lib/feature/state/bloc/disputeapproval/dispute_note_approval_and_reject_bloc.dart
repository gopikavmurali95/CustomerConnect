import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/dispute_approval_resp_model/dispute_approval_resp_model.dart';
import 'package:customer_connect/feature/data/models/dispute_invoice_approve_in_model/dispute_invoice_approve_in_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dispute_note_approval_and_reject_event.dart';
part 'dispute_note_approval_and_reject_state.dart';
part 'dispute_note_approval_and_reject_bloc.freezed.dart';

@injectable
class DisputeNoteApprovalAndRejectBloc extends Bloc<
    DisputeNoteApprovalAndRejectEvent, DisputeNoteApprovalAndRejectState> {
  final IDisputeNoteApprovalRepo disputeNoteApprovalRepo;
  DisputeNoteApprovalAndRejectBloc(this.disputeNoteApprovalRepo)
      : super(DisputeNoteApprovalAndRejectState.initial()) {
    on<ApproveDisputeNoteEvent>((event, emit) async {
      if (event.approve.nextLevel!.isNotEmpty) {
        Either<MainFailures, DisputeApprovalRespModel> status =
            await disputeNoteApprovalRepo.disputeApproval(event.approve);
        emit(
          status.fold(
            (l) => const DisputeApprovalFailedState(),
            (r) => DisputeNoteApprovalOrRejectState(resp: r, isApprove: true),
          ),
        );
      } else {
        Either<MainFailures, DisputeApprovalRespModel> status =
            await disputeNoteApprovalRepo.disputeReject(event.approve);
        emit(
          status.fold(
            (l) => const DisputeApprovalFailedState(),
            (r) => DisputeNoteApprovalOrRejectState(resp: r, isApprove: true),
          ),
        );
      }
    });

    on<AddDisputeNoteApprovalLoadingEvent>((event, emit) {
      emit(const DisputeApprovalLoadingState());
    });

    on<ClearDisputeApprovalEvent>((event, emit) {
      emit(const DisputeNoteApprovalOrRejectState(resp: null, isApprove: null));
    });
  }
}
