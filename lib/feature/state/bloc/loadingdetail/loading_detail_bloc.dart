import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/loading_detail_model/loading_detail_model.dart';
import 'package:dartz/dartz.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'loading_detail_event.dart';
part 'loading_detail_state.dart';
part 'loading_detail_bloc.freezed.dart';

@injectable
class LoadingDetailBloc extends Bloc<LoadingDetailEvent, LoadingDetailState> {
  final ILoadingRepo loadingRepo;
  LoadingDetailBloc(this.loadingRepo) : super(LoadingDetailState.initial()) {
    on<GetloadingDetailEvent>((event, emit) async {
      Either<MainFailures, List<LoadingDetailModel>> loadingDetails =
          await loadingRepo.getLoadingDetail(event.iD);
      List<LoadingDetailModel> searcheditems = [];
      emit(
        loadingDetails.fold(
          (l) => const LoadingDetailFailedState(),
          (r) {
            searcheditems = r
                .where((element) =>
                    element.prdCode!
                        .toLowerCase()
                        .toUpperCase()
                        .contains(event.searchQuery.toUpperCase()) ||
                    element.prdName!
                        .toLowerCase()
                        .toUpperCase()
                        .contains(event.searchQuery.toUpperCase()))
                .toList();
            return GetloadingDetail(
                detail: event.searchQuery.isEmpty ? r : searcheditems);
          },
        ),
      );
    });
    on<ClearLoadingDetailEvent>((event, emit) {
      emit(const GetloadingDetail(detail: null));
    });
  }
}
