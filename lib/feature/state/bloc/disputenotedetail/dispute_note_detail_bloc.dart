import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/dispute_note_detail_model/dispute_note_detail_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dispute_note_detail_event.dart';
part 'dispute_note_detail_state.dart';
part 'dispute_note_detail_bloc.freezed.dart';

@injectable
class DisputeNoteDetailBloc
    extends Bloc<DisputeNoteDetailEvent, DisputeNoteDetailState> {
  final IDisputeNoteApprovalRepo disputeNoteApprovalRepo;
  DisputeNoteDetailBloc(this.disputeNoteApprovalRepo)
      : super(DisputeNoteDetailState.initial()) {
    on<GetDisputeNoteDetailEvent>((event, emit) async {
      Either<MainFailures, List<DisputeNoteDetailModel>> details =
          await disputeNoteApprovalRepo.getDisputeApprovalDetails(event.reqId);

      emit(details.fold((l) => const GetdisputenoteDetailFailedState(),
          (r) => GetDisputeNoteDetailState(details: r)));
    });
    on<ClearDisputeNoteDetailEvent>((event, emit) {
      emit(const GetDisputeNoteDetailState(details: null));
    });
  }
}
