import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/return_approve_in_model/return_approve_in_model.dart';
import 'package:customer_connect/feature/data/models/return_approve_out_model/return_approve_out_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'approve_return_product_event.dart';
part 'approve_return_product_state.dart';
part 'approve_return_product_bloc.freezed.dart';

@injectable
class ApproveReturnProductBloc
    extends Bloc<ApproveReturnProductEvent, ApproveReturnProductState> {
  final IReturnApprovalRepo returnApprovalRepo;
  ApproveReturnProductBloc(this.returnApprovalRepo)
      : super(ApproveReturnProductState.initial()) {
    on<ApproveProductEvent>((event, emit) async {
      Either<MainFailures, ReturnApproveOutModel> approve =
          await returnApprovalRepo.approveReturnProduct(event.approval);

      emit(approve.fold((l) => const ApprovalFailedState(),
          (r) => ApproveReturnProductdSTatusState(response: r)));
    });
    on<AddApprovalLoadingEvent>((event, emit) {
      emit(const ApproveReturnLoadingState());
    });
  }
}
