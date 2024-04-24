import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/approval_reson_model/approval_reson_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'approval_reasons_event.dart';
part 'approval_reasons_state.dart';
part 'approval_reasons_bloc.freezed.dart';

@injectable
class ApprovalReasonsBloc
    extends Bloc<ApprovalReasonsEvent, ApprovalReasonsState> {
  final IReturnApprovalRepo returnApprovalRepo;
  ApprovalReasonsBloc(this.returnApprovalRepo)
      : super(ApprovalReasonsState.initial()) {
    on<GetApprovalReasonsEvent>((event, emit) async {
      Either<MainFailures, List<ApprovalResonModel>> resons =
          await returnApprovalRepo.getReturnApprovalResons(event.rsnType);
      emit(resons.fold((l) => const GetReasonsFailedState(),
          (r) => GetApprovalResonsState(resons: r)));
    });
  }
}
