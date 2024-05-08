import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/journey_plan_header_model/journey_plan_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'journey_plan_header_event.dart';
part 'journey_plan_header_state.dart';
part 'journey_plan_header_bloc.freezed.dart';

@injectable
class JourneyPlanHeaderBloc
    extends Bloc<JourneyPlanHeaderEvent, JourneyPlanHeaderState> {
  final IJourneyPlanApprovalRepo journeyPlanApprovalRepo;
  JourneyPlanHeaderBloc(this.journeyPlanApprovalRepo)
      : super(JourneyPlanHeaderState.initial()) {
    on<GetAllJourneyPlanHeadersEvent>((event, emit) async {
      Either<MainFailures, List<JourneyPlanHeaderModel>> headers =
          await journeyPlanApprovalRepo.getJourneyPlanHeaders(event.userID);

      emit(
        headers.fold(
          (l) => const JourneyPlanHeadersFailedState(),
          (r) => GetAllJourneyPlanHeadersState(headers: r),
        ),
      );
    });
    on<ClearJourneyPlanHeadersEvent>((event, emit) {
      emit(const GetAllJourneyPlanHeadersState(headers: null));
    });
  }
}
