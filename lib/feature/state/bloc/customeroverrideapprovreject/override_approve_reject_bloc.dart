import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';

import 'package:customer_connect/feature/data/models/overide_approv_reject_model/overide_approv_reject_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'override_approve_reject_event.dart';
part 'override_approve_reject_state.dart';
//part '../bloc/override_approve_reject_bloc.freezed.dart';
part 'override_approve_reject_bloc.freezed.dart';

@injectable
class OverrideApproveRejectBloc extends Bloc<OverrideApproveRejectEvent, OverrideApproveRejectState> {
  final ICustomerOverrideApprovalRepo approveRejectRepo;
  OverrideApproveRejectBloc(this.approveRejectRepo) : super(OverrideApproveRejectState.initial()) {
    on<GetOverrideApproveRejectEvent>((event, emit) async {
      Either<MainFailures, OverideApprovRejectModel> resp =
          await approveRejectRepo.overrideApproveReject(event.ooaID, event.userId, event.status);

      emit(resp.fold((l) => const OverrideCusFailedState(),
          (r) => GetOverrideApprovalState(approve: r)));
    });

    on<LoadingOverideApproveRejectEvent>((event, emit) {
      emit(const  OverrideCusLoadingState());
    });
  }
}
