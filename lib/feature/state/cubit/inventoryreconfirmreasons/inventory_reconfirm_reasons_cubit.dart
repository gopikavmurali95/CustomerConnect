import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/inventory_reconfirm_reason_model/inventory_reconfirm_reason_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'inventory_reconfirm_reasons_state.dart';
part 'inventory_reconfirm_reasons_cubit.freezed.dart';

@injectable
class InventoryReconfirmReasonsCubit
    extends Cubit<InventoryReconfirmReasonsState> {
  final IinvetoryReconfirmationApprovalRepo iinvetoryReconfirmationApprovalRepo;
  InventoryReconfirmReasonsCubit(this.iinvetoryReconfirmationApprovalRepo)
      : super(InventoryReconfirmReasonsState.initial());

  void getinventoryReconfirmResons() async {
    Either<MainFailures, List<InventoryReconfirmReasonModel>> resons =
        await iinvetoryReconfirmationApprovalRepo
            .getinventoryReconfirmReasons();

    emit(resons.fold((l) => const InventoryReconfirmReasonsFailedState(),
        (r) => GetInventoryReconfirmResonsState(reasons: r)));
  }
}
