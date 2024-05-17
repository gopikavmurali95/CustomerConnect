import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/van_to_van_approval_in_paras/van_to_van_approval_in_paras.dart';
import 'package:customer_connect/feature/data/models/van_to_van_approval_model/van_to_van_approval_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'van_to_van_approval_event.dart';
part 'van_to_van_approval_state.dart';
part 'van_to_van_approval_bloc.freezed.dart';

@injectable
class VanToVanApprovalBloc
    extends Bloc<VanToVanApprovalEvent, VanToVanApprovalState> {
  final IVanToVanApprovalRepo vanToVanApproval;
  VanToVanApprovalBloc(this.vanToVanApproval)
      : super(VanToVanApprovalState.initial()) {
    on<GetVanToVanApprovalEent>((event, emit) async {
      Either<MainFailures, VanToVanApprovalModel> approve =
          await vanToVanApproval.approveVanToVan(event.approvalIn);

      emit(approve.fold((l) => const VanToVanApprovalFailedstate(),
          (r) => GetVanToVanApprovalState(headers: r)));
    });
    on<VanToVanApprovalLoadingEvent>((event, emit) {
      emit(const VanToVanApprovalState.vanToVanApprovalLoadingState());
    });
  }
}
