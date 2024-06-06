import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/dispute_note_header_model/dispute_note_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'dispute_note_header_event.dart';
part 'dispute_note_header_state.dart';
part 'dispute_note_header_bloc.freezed.dart';

@injectable
class DisputeNoteHeaderBloc
    extends Bloc<DisputeNoteHeaderEvent, DisputeNoteHeaderState> {
  final IDisputeNoteApprovalRepo disputeNoteApprovalRepo;
  DisputeNoteHeaderBloc(this.disputeNoteApprovalRepo)
      : super(DisputeNoteHeaderState.initial()) {
    on<GetDisputeNoteHeadersEvent>((event, emit) async {
      List<DisputeNoteHeaderModel> searcheditems = [];
      Either<MainFailures, List<DisputeNoteHeaderModel>> header =
          await disputeNoteApprovalRepo
              .getDisputeNoteApprovalHeaders(event.userID);
      emit(
        header.fold(
          (l) => const DisputeNoteHeaderFailedState(),
          (r) {
            searcheditems = r
                .where((element) =>
                    element.drhTransId!
                        .toLowerCase()
                        .toUpperCase()
                        .contains(event.searchQuery.toUpperCase()) ||
                    element.cusCode!
                        .toLowerCase()
                        .toUpperCase()
                        .contains(event.searchQuery.toUpperCase()) ||
                    element.cusName!
                        .toLowerCase()
                        .toUpperCase()
                        .contains(event.searchQuery.toUpperCase()))
                .toList();
            return GetDisputeNoteHeaderState(
                headers: event.searchQuery.isEmpty ? r : searcheditems);
          },
        ),
      );
    });
    on<ClearDisputeNoteHEaderEvent>((event, emit) {
      emit(const GetDisputeNoteHeaderState(headers: null));
    });
  }
}
