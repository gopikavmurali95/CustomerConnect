import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/pending_approvals_model/pending_approvals_model.dart';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'pending_approvals_list_event.dart';
part 'pending_approvals_list_state.dart';
part 'pending_approvals_list_bloc.freezed.dart';

@injectable
class PendingApprovalsListBloc
    extends Bloc<PendingApprovalsListEvent, PendingApprovalsListState> {
  final IPendingApprovalRepo pendingApprovalsRepo;
  PendingApprovalsListBloc(this.pendingApprovalsRepo)
      : super(PendingApprovalsListState.initial()) {
    on<GetPendingApprovalsListEvent>((event, emit) async {
      Either<MainFailures, List<PendingApprovalsModel>> pendingApproval =
          await pendingApprovalsRepo.getPendingApprovalList(event.userId);

      emit(
        pendingApproval.fold(
          (l) => const PendingApprovalsListFailedState(),
          (r) => GetPendingApprovalsListState(approvals: r),
        ),
      );
    });
  }
}
