import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/merch_dispute_request_model/merch_dispute_request_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'merch_dispute_note_req_event.dart';
part 'merch_dispute_note_req_state.dart';
part 'merch_dispute_note_req_bloc.freezed.dart';

@injectable
class MerchDisputeNoteReqBloc
    extends Bloc<MerchDisputeNoteReqEvent, MerchDisputeNoteReqState> {
  final IMerchDisputeReqRepo disputeRepo;
  MerchDisputeNoteReqBloc(this.disputeRepo)
      : super(MerchDisputeNoteReqState.initial()) {
    on<GetDisputeNoteDataEvent>((event, emit) async {
      List<MerchDisputeRequestModel> searchlistitems = [];

      Either<MainFailures, List<MerchDisputeRequestModel>> data =
          await disputeRepo.getDisputeItems(
              event.fromDate, event.toDate, event.status);

      emit(data.fold((l) => const MerchDisputeNoteDataFailed(), (r) {
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
                (element.rotCode ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.rotName ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.drhId ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.drhTransId ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetMerchDisputeDataState(
            data: event.searchQuery.isEmpty ? r : searchlistitems);
      }));
    });
    on((event, emit) {
      emit(const GetMerchDisputeDataState(data: null));
    });
  }
}
