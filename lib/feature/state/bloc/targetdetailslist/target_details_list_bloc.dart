import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/target_details_list_model/target_details_list_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'target_details_list_event.dart';
part 'target_details_list_state.dart';
part 'target_details_list_bloc.freezed.dart';

@injectable
class TargetDetailsListBloc
    extends Bloc<TargetDetailsListEvent, TargetDetailsListState> {
  final ITargetRepo detailsRepo;
  TargetDetailsListBloc(this.detailsRepo)
      : super(TargetDetailsListState.initial()) {
    on<GetTargetDetailsListEvent>((event, emit) async {
      List<TargetDetailsListModel> searchlistitems = [];

      Either<MainFailures, List<TargetDetailsListModel>> data =
          await detailsRepo.getTargetDetailItems(event.fromDate, event.rotID);

      emit(data.fold((l) => const GetTargetDetailsListFailed(), (r) {
        searchlistitems = r
            .where((element) =>
                (element.pkgId ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.pkgName ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetTargetDetailsListState(
            details: event.searchQuery.isEmpty ? r : searchlistitems);
      }));
    });
    on((event, emit) {
      emit(const GetTargetDetailsListState(details: null));
    });
  }
}
