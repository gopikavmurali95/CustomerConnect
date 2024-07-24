import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/void_transaction_approve_and_reject_model/void_transaction_approve_and_reject_model.dart';
import 'package:customer_connect/feature/data/models/void_transaction_json_model/void_transaction_json_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'void_transaction_rejection_event.dart';
part 'void_transaction_rejection_state.dart';
part 'void_transaction_rejection_bloc.freezed.dart';

@injectable
class VoidTransactionRejectionBloc
    extends Bloc<VoidTransactionRejectionEvent, VoidTransactionRejectionState> {
  final IVoidTransactionRepo rejection;
  VoidTransactionRejectionBloc(this.rejection)
      : super(VoidTransactionRejectionState.initial()) {
    on<VoidTransactionRejectingEvent>((event, emit) async {
      Either<MainFailures, VoidTransactionApproveAndRejectModel> resp =
          await rejection.voidTransactionReject(event.rejecting);

      emit(resp.fold((l) => const VoidTransactionRectionFailed(),
          (r) => VoidTranctionRejectingState(reject: r)));
    });
    on<ClearVoidTransactionRejection>((event, emit) {
      emit(const VoidTranctionRejectingState(reject: null));
    });
  }
}
