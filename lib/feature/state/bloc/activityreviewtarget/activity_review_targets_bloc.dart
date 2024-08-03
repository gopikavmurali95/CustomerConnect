import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/activity_target_model/activity_target_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'activity_review_targets_event.dart';
part 'activity_review_targets_state.dart';
part 'activity_review_targets_bloc.freezed.dart';

@injectable
class ActivityReviewTargetsBloc
    extends Bloc<ActivityReviewTargetsEvent, ActivityReviewTargetsState> {
  final IActivityReviewRepo activityReviewRepo;
  ActivityReviewTargetsBloc(this.activityReviewRepo)
      : super(ActivityReviewTargetsState.initial()) {
    on<GetActivityTargetEvent>((event, emit) async {
      Either<MainFailures, ActivityTargetModel> targets =
          await activityReviewRepo.getActvityTargets(event.udpID);

      emit(targets.fold((l) => const ActvitytargetFailedState(),
          (r) => GetActivitytargetState(target: r)));
    });

    on<ClearActivitytargetEvent>((event, emit) {
      emit(const GetActivitytargetState(target: null));
    });
  }
}
