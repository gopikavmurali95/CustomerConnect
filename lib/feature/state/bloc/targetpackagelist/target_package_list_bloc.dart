import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/target_package_list_model/target_package_list_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'target_package_list_event.dart';
part 'target_package_list_state.dart';
part 'target_package_list_bloc.freezed.dart';

@injectable
class TargetPackageListBloc
    extends Bloc<TargetPackageListEvent, TargetPackageListState> {
  final ITargetRepo targetPackageRepo;
  TargetPackageListBloc(this.targetPackageRepo)
      : super(TargetPackageListState.initial()) {
    on<GetTargetPackageListEvent>((event, emit) async {
      List<TargetPackageListModel> searchlistitems = [];

      Either<MainFailures, List<TargetPackageListModel>> datas =
          await targetPackageRepo.getTargetPackageItems(
              event.fromDate, event.rotID, event.pkgID);
      emit(datas.fold((l) => const TargetPackageListFailure(), (r) {
        searchlistitems = r
            .where((element) =>
                (element.prdCode ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.serachQuery.toUpperCase()) ||
                (element.prdName ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.serachQuery.toUpperCase()))
            .toList();
        return GetTargetPackageListState(
            targetPackageData: event.serachQuery.isEmpty ? r : searchlistitems);
      }));
    });

    on<ClearTargetPackageList>((event, emit) {
      emit(const GetTargetPackageListState(targetPackageData: null));
    });
  }
}
