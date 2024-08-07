import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/get_survey_count_model/get_survey_count_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'merch_survey_count_event.dart';
part 'merch_survey_count_state.dart';
part 'merch_survey_count_bloc.freezed.dart';

@injectable
class MerchSurveyCountBloc
    extends Bloc<MerchSurveyCountEvent, MerchSurveyCountState> {
  final IMerchandisingDashBoardRepo surveycountrepo;
  MerchSurveyCountBloc(this.surveycountrepo)
      : super(MerchSurveyCountState.initial()) {
    on<GetSurveyCountEvent>((event, emit) async {
      Either<MainFailures, GetSurveyCountModel> surveycounts =
          await surveycountrepo.getsurveycount(event.fromDate, event.toDate);

      emit(surveycounts.fold((l) => const SurveyCountFailedState(),
          (r) => GetSurveyCountState(survey: r)));
    });
    on<SurveyCountClearEvent>((event, emit) {
      emit(const GetSurveyCountState(survey: null));
    });
  }
}
