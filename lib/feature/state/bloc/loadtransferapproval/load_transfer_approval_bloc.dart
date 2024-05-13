import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/load_transfer_approval_in_model/load_transfer_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/load_transfer_approval_out_model/load_transfer_approval_out_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'load_transfer_approval_event.dart';
part 'load_transfer_approval_state.dart';
part 'load_transfer_approval_bloc.freezed.dart';

@injectable
class LoadTransferApprovalBloc
    extends Bloc<LoadTransferApprovalEvent, LoadTransferApprovalState> {
  final ILoadTransferApprovalRepo loadTransferApprovalRepo;
  LoadTransferApprovalBloc(this.loadTransferApprovalRepo)
      : super(LoadTransferApprovalState.initial()) {
    on<ApproveLoadtransferEvent>((event, emit) async {
      Either<MainFailures, LoadTransferApprovalOutModel> approve =
          await loadTransferApprovalRepo.loadTransferApproval(event.approve);

      emit(
        approve.fold(
          (l) => const LoadTransferApprovalFailedState(),
          (r) => ApproveLoadTransferState(response: r),
        ),
      );
    });

    on<AddLoadTransferLoadingEvent>((event, emit) {
      emit(const LoadTransferApprovalLoadingState());
    });
    on<ClearLoadTransferApprovalEvent>((event, emit) {
      emit(const ApproveLoadTransferState(response: null));
    });
  }
}
