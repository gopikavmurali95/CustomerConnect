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
      emit(
        loadingDetails.fold(
          (l) => const LoadingDetailFailedState(),
          (r) => GetloadingDetail(detail: r),
        ),
      );
    });
    on<ClearLoadingDetailEvent>((event, emit) {
      emit(const GetloadingDetail(detail: null));
    });
  }
}
