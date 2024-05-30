import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/approval_count_model/approval_count_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'approval_counts_event.dart';
part 'approval_counts_state.dart';
part 'approval_counts_bloc.freezed.dart';

@injectable
class ApprovalCountsBloc
    extends Bloc<ApprovalCountsEvent, ApprovalCountsState> {
  final IApprovalCountsRepo approvalcounts;
  ApprovalCountsBloc(this.approvalcounts)
      : super(ApprovalCountsState.initial()) {
    on<GetApprovalsCountEvent>((event, emit) async {
      Either<MainFailures, ApprovalCountModel> count =
          await approvalcounts.approvalsCount(event.userID);
      emit(count.fold((l) => const GetApprovalCountsFailed(),
          (r) => GetApprovalsCount(approvalCounts: r)));
    });
    on<ClearApprovalCounts>((event, emit) {
      emit(const GetApprovalsCount(approvalCounts: null));
    });
  }
}
