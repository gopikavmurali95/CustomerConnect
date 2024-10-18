import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/free_sample_approval_resp_model/free_sample_approval_resp_model.dart';
import 'package:customer_connect/feature/data/models/free_sample_approve_in_model/free_sample_approve_in_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'free_sample_approve_event.dart';
part 'free_sample_approve_state.dart';
part 'free_sample_approve_bloc.freezed.dart';

@injectable
class FreeSampleApproveBloc
    extends Bloc<FreeSampleApproveEvent, FreeSampleApproveState> {
  final IFreeSampleApprovalRepo freeSampleApprovalRepo;
  FreeSampleApproveBloc(this.freeSampleApprovalRepo)
      : super(FreeSampleApproveState.initial()) {
    on<SubmitFreeSampleRequestEvent>((event, emit) async {
      Either<MainFailures, FreeSampleApprovalRespModel> resp =
          await freeSampleApprovalRepo.approvefreeSample(event.approve);

      emit(resp.fold((l) => const FreesampleSubmitFailedState(),
          (r) => SubmitFreeSampleRequestState(resp: r)));
    });

    on<FreesamplesubmitLoadingEvent>((event, emit) {
      emit(const FreesampleSubmitLoadingState());
    });
  }
}
