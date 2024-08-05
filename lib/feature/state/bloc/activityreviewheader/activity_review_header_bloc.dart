import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/activity_review_header_model/activity_review_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'activity_review_header_event.dart';
part 'activity_review_header_state.dart';
part 'activity_review_header_bloc.freezed.dart';

@injectable
class ActivityReviewHeaderBloc
    extends Bloc<ActivityReviewHeaderEvent, ActivityReviewHeaderState> {
  final IActivityReviewRepo activityReviewRepo;
  ActivityReviewHeaderBloc(this.activityReviewRepo)
      : super(ActivityReviewHeaderState.initial()) {
    on<GetActivityReviewHeadersEvent>((event, emit) async {
      List<ActivityReviewHeaderModel> searcheditems = [];

      Either<MainFailures, List<ActivityReviewHeaderModel>> headers =
          await activityReviewRepo.getActvityReviewHeaders(event.rotTyp);

      emit(headers.fold((l) => const ActvityReviewHeaderFailedState(), (r) {
        searcheditems = r
            .where((element) =>
                element.rotName!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.usrName!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetActivityRevewHeadersState(
            headers: event.searchQuery.isEmpty ? r : searcheditems);
      }));
    });
    on<ClearActivityReviewHeaderEvent>((event, emit) {
      emit(const GetActivityRevewHeadersState(headers: null));
    });
  }
}
