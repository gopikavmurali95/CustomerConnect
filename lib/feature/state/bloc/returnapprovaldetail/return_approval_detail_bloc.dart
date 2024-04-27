import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/return_approval_detail_model/return_approval_detail_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'return_approval_detail_event.dart';
part 'return_approval_detail_state.dart';
part 'return_approval_detail_bloc.freezed.dart';

@injectable
class ReturnApprovalDetailBloc
    extends Bloc<ReturnApprovalDetailEvent, ReturnApprovalDetailState> {
  final IReturnApprovalRepo returnApprovalRepo;
  ReturnApprovalDetailBloc(this.returnApprovalRepo)
      : super(ReturnApprovalDetailState.initial()) {
    on<GetReturnApprovalDetailEvennt>((event, emit) async {
      Either<MainFailures, List<ReturnApprovalDetailModel>> details =
          await returnApprovalRepo.getReturnApprovalDetails(
              event.reqID, event.mode);

      emit(details.fold((l) => const ReturnApprovalDetailFailedState(),
          (r) => GetReturnApprovelDetailState(details: r)));
    });
    on<ClearReturnDetailEvent>((event, emit) {
      emit(const GetReturnApprovelDetailState(details: null));
    });
  }
}
