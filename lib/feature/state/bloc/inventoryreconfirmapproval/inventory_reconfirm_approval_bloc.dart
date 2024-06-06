import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/inventory_reconfirm_approval_resp_model/inventory_reconfirm_approval_resp_model.dart';
import 'package:customer_connect/feature/data/models/inventory_reconfirm_approve_in_model/inventory_reconfirm_approve_in_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'inventory_reconfirm_approval_event.dart';
part 'inventory_reconfirm_approval_state.dart';
part 'inventory_reconfirm_approval_bloc.freezed.dart';

@injectable
class InventoryReconfirmApprovalBloc extends Bloc<
    InventoryReconfirmApprovalEvent, InventoryReconfirmApprovalState> {
  final IinvetoryReconfirmationApprovalRepo iinvetoryReconfirmationApprovalRepo;
  InventoryReconfirmApprovalBloc(this.iinvetoryReconfirmationApprovalRepo)
      : super(InventoryReconfirmApprovalState.initial()) {
    on<ApproveInventoryReconfirmEvent>((event, emit) async {
      Either<MainFailures, InventoryReconfirmApprovalRespModel> approve =
          await iinvetoryReconfirmationApprovalRepo
              .inventoryReconfromApprove(event.approve);

      emit(approve.fold((l) => const InventoryReconfirmApproveFailedState(),
          (r) => InventoryReconfirmApproveState(response: r)));
    });
  }
}
