import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/load_transfer_approval_header_model/load_transfer_approval_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'load_transfer_header_event.dart';
part 'load_transfer_header_state.dart';
part 'load_transfer_header_bloc.freezed.dart';

@injectable
class LoadTransferHeaderBloc
    extends Bloc<LoadTransferHeaderEvent, LoadTransferHeaderState> {
  final ILoadTransferApprovalRepo loadTransferApprovalRepo;
  LoadTransferHeaderBloc(this.loadTransferApprovalRepo)
      : super(LoadTransferHeaderState.initial()) {
    on<GetAllLoadTransferHeadersEvent>((event, emit) async {
      List<LoadTransferApprovalHeaderModel> searcheditems = [];
      Either<MainFailures, List<LoadTransferApprovalHeaderModel>> headers =
          await loadTransferApprovalRepo.getLoadTransferHeaders(
              event.userID, event.mode);

      emit(headers.fold((l) => const LoadTransferHeaderFailedState(), (r) {
        searcheditems = r
            .where((element) =>
                (element.ltrReqNo ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.rotName ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.usrName ?? "")
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetAllLoadTransferHeadersState(
            headers: event.searchQuery.isEmpty ? r : searcheditems);
      }));
    });
    on<ClearLoadtransferHeaderEvent>((event, emit) {
      emit(const GetAllLoadTransferHeadersState(headers: null));
    });
  }
}
