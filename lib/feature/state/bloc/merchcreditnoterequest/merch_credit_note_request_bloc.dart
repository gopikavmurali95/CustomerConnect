import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/merch_credit_note_request_model/merch_credit_note_request_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'merch_credit_note_request_event.dart';
part 'merch_credit_note_request_state.dart';
part 'merch_credit_note_request_bloc.freezed.dart';

@injectable
class MerchCreditNoteRequestBloc
    extends Bloc<MerchCreditNoteRequestEvent, MerchCreditNoteRequestState> {
  final IMerchCreditNoteReqRepo creditNoteData;
  MerchCreditNoteRequestBloc(this.creditNoteData)
      : super(MerchCreditNoteRequestState.initial()) {
    on<GetMerchCreditNoteRequestEvent>((event, emit) async {
      List<MerchCreditNoteRequestModel> searchlistitems = [];

      Either<MainFailures, List<MerchCreditNoteRequestModel>> data =
          await creditNoteData.getActivityItems(
              event.fromDate, event.toDate, event.status);

      emit(data.fold((l) => const MerchCreditRequestFailed(), (r) {
        searchlistitems = r
            .where((element) =>
                (element.cusCode ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.cusName ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.cnhNumber ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.cnhId ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetMerchCreditNoteRequestState(
            creditNoteState: event.searchQuery.isEmpty ? r : searchlistitems);
      }));
    });
    on<ClearMerchCreditNoteRequestData>((event, emit) {
      emit(const GetMerchCreditNoteRequestState(creditNoteState: null));
    });
  }
}
