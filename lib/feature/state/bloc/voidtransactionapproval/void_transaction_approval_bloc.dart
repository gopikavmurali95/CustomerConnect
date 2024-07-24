import 'package:bloc/bloc.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/void_transacrtion_approval_in_model/void_transacrtion_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/void_transaction_approve_and_reject_model/void_transaction_approve_and_reject_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures/failures.dart';

part 'void_transaction_approval_event.dart';
part 'void_transaction_approval_state.dart';
part 'void_transaction_approval_bloc.freezed.dart';

@injectable
class VoidTransactionApprovalBloc
    extends Bloc<VoidTransactionApprovalEvent, VoidTransactionApprovalState> {
  final IVoidTransactionRepo approval;
  VoidTransactionApprovalBloc(this.approval)
      : super(VoidTransactionApprovalState.initial()) {
    on<VoidTransactionApprovingEvent>((event, emit) async {
      Either<MainFailures, VoidTransactionApproveAndRejectModel> resp =
          await approval.voidTransactionApprove(event.approving);

      emit(resp.fold((l) => const VoidTransactionApprovalFailed(),
          (r) => VoidTransactionApprovingState(approval: r)));
    });
    on<ClearVoidTransactionApproval>((event, emit) {
      emit(const VoidTransactionApprovingState(approval: null));
    });
    on<VoidTransactionLoadingEvent>((event, emit) {
      emit(const VoidTransactionLoadingState());
    });
  }
}
