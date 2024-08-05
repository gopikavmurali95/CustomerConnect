import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/activity_review_detail_list_model/activity_review_detail_list_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'activity_review_detail_event.dart';
part 'activity_review_detail_state.dart';
part 'activity_review_detail_bloc.freezed.dart';

@injectable
class ActivityReviewDetailBloc
    extends Bloc<ActivityReviewDetailEvent, ActivityReviewDetailState> {
  final IActivityReviewRepo activityReviewRepo;
  ActivityReviewDetailBloc(this.activityReviewRepo)
      : super(ActivityReviewDetailState.initial()) {
    on<GetActivityReviewDetailEvent>((event, emit) async {
      Either<MainFailures, List<ActivityReviewDetailListModel>> details =
          await activityReviewRepo.getActvityReviewDetailList(event.udpID);

      emit(
        details.fold(
          (l) => const ActivityReviewDetailFailedState(),
          (r) => GetActivityReviewDetailState(details: r),
        ),
      );
    });
    on<ClearActivityReviewDetailEvent>((event, emit) {
      emit(const GetActivityReviewDetailState(details: null));
    });
  }
}
