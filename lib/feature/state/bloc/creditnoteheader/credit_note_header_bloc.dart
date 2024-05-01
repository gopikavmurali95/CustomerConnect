import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/credit_note_header_model/credit_note_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'credit_note_header_event.dart';
part 'credit_note_header_state.dart';
part 'credit_note_header_bloc.freezed.dart';

@injectable
class CreditNoteHeaderBloc
    extends Bloc<CreditNoteHeaderEvent, CreditNoteHeaderState> {
  final ICreditNoteApprovalRepo creditNoteApprovalRepo;
  CreditNoteHeaderBloc(this.creditNoteApprovalRepo)
      : super(CreditNoteHeaderState.initial()) {
    on<GetAllCreditNoteHeadersEvent>((event, emit) async {
      Either<MainFailures, List<CreditNoteHeaderModel>> headers =
          await creditNoteApprovalRepo
              .getCreditNoteApprovalHeaders(event.userId);

      emit(
        headers.fold(
          (l) => const CreditNoteHeaderFailedState(),
          (r) => GetCreditNoteHeadersState(headers: r),
        ),
      );
    });
    on<ClearCreditNoteHeadersEvent>((event, emit) {
      emit(const GetCreditNoteHeadersState(headers: null));
    });
  }
}
