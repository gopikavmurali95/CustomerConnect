import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/credit_note_detail_model/credit_note_detail_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'credit_note_detail_event.dart';
part 'credit_note_detail_state.dart';
part 'credit_note_detail_bloc.freezed.dart';

@injectable
class CreditNoteDetailBloc
    extends Bloc<CreditNoteDetailEvent, CreditNoteDetailState> {
  final ICreditNoteApprovalRepo creditNoteApprovalRepo;
  CreditNoteDetailBloc(this.creditNoteApprovalRepo)
      : super(CreditNoteDetailState.initial()) {
    on<GetCreditNoteDetailsEvent>((event, emit) async {
      List<CreditNoteDetailModel> searcheditems = [];
      Either<MainFailures, List<CreditNoteDetailModel>> details =
          await creditNoteApprovalRepo.getCreditApprovalDetails(event.reqId);
      emit(details.fold((l) => const CreditNoteDetailFailedState(), (r) {
        searcheditems = r
            .where((element) =>
                element.invInvoiceId!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.prdName!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.transTime!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetCreditNoteDetailState(
            details: event.searchQuery.isEmpty ? r : searcheditems);
      }));
    });

    on<ClearCreditNoteDetailEvent>((event, emit) {
      emit(const GetCreditNoteDetailState(details: null));
    });
  }
}
