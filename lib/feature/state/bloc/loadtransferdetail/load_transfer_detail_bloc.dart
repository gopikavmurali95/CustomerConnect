import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/load_transfer_detail_model/load_transfer_detail_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'load_transfer_detail_event.dart';
part 'load_transfer_detail_state.dart';
part 'load_transfer_detail_bloc.freezed.dart';

@injectable
class LoadTransferDetailBloc
    extends Bloc<LoadTransferDetailEvent, LoadTransferDetailState> {
  final ILoadTransferApprovalRepo loadTransferApprovalRepo;
  LoadTransferDetailBloc(this.loadTransferApprovalRepo)
      : super(LoadTransferDetailState.initial()) {
    on<GetAllLoadTransferDetailEvent>((event, emit) async {
      List<LoadTransferDetailModel> searchedItems = [];
      Either<MainFailures, List<LoadTransferDetailModel>> details =
          await loadTransferApprovalRepo.getLoadTransferDetails(event.reqID);

      emit(details.fold((l) => const LoadTransferDetailFailedState(), (r) {
        searchedItems = r
            .where((element) =>
                (element.prdCode ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.prdName ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetLoadTransferDetailState(
            details: event.searchQuery.isEmpty ? r : searchedItems);
      }));
    });
    on<ClearLoadTransferDetailEvent>((event, emit) {
      emit(const GetLoadTransferDetailState(details: null));
    });
  }
}
