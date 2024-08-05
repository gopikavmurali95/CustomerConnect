import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/settelemet_approval_reject/settelemet_approval_reject.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settlement_approval_reject_event.dart';
part 'settlement_approval_reject_state.dart';
part 'settlement_approval_reject_bloc.freezed.dart';

@injectable
class SettlementApprovalRejectBloc
    extends Bloc<SettlementApprovalRejectEvent, SettlementApprovalRejectState> {
  final ISettlementApprovalHeaderRepo rejectApprovalRepo;

  SettlementApprovalRejectBloc(this.rejectApprovalRepo)
      : super(SettlementApprovalRejectState.initial()) {
    on<GetRejectApprovalEvent>((event, emit) async {
      Either<MainFailures, SettelemetApprovalReject> rejct =
          await rejectApprovalRepo.rejectApprovaldetails(event.udpID);

      emit(rejct.fold((l) => const RejectApprovalFailedState(),
          (r) => GetRejectApprovalState(reject: r)));
    });
    on<ClearRejectApprovalEvent>((event, emit) {
      emit(const GetRejectApprovalState(reject: null));
    });
    on<RejectApprovalLoadingEvent>((event, emit) {
      emit(const PostApprovalLoadingState());
    });
  }
}
