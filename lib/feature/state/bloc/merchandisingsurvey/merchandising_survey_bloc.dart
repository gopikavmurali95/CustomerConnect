import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/merchanding_survey_model/merchanding_survey_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'merchandising_survey_event.dart';
part 'merchandising_survey_state.dart';
part 'merchandising_survey_bloc.freezed.dart';

@injectable
class MerchandisingSurveyBloc
    extends Bloc<MerchandisingSurveyEvent, MerchandisingSurveyState> {
  final IMerchandinsingSurveyRepo survey;
  MerchandisingSurveyBloc(this.survey)
      : super(MerchandisingSurveyState.initial()) {
    on<GetMerchandisingSurveyEvent>((event, emit) async {
      List<MerchandingSurveyModel> searchlistitems = [];

      Either<MainFailures, List<MerchandingSurveyModel>> data = await survey
          .getSurveyItems(event.fromDate, event.toDate, event.status);

      emit(data.fold((l) => const GetMerchandisingSurveyFailedState(), (r) {
        searchlistitems = r
            .where((element) =>
                (element.cusCode ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.cusName ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.surveyName ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetMerchandisingSurveyState(
            data: event.searchQuery.isEmpty ? r : searchlistitems);
      }));
    });
    on<ClearMerchandisingSurveyList>((event, emit) {
      emit(const GetMerchandisingSurveyState(data: null));
    });
  }
}
