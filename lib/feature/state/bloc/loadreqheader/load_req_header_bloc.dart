import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/failures/failures.dart';
import '../../../data/abstractrepo/abstractrepo.dart';
import '../../../data/models/load_req_header_model/LoadReqHeaderModel.dart';

part 'load_req_header_event.dart';
part 'load_req_header_state.dart';
part 'load_req_header_bloc.freezed.dart';

@injectable
class LoadReqHeaderBloc extends Bloc<LoadReqHeaderEvent, LoadReqHeaderState> {
  final ILoadRequestHeaderRepo loadReqstHeaderRepo;

  LoadReqHeaderBloc(this.loadReqstHeaderRepo)
      : super(LoadReqHeaderState.initial()) {
    on<LoadreqSuccessEvent>((event, emit) async {
      Either<MainFailures, List<LoadReqHeaderModel>> loadreqlist =
          await loadReqstHeaderRepo.loadreqHeaderList(event.userId);
      emit(loadreqlist.fold((l) => const LoadReqheadFailedState(),
          (r) => LoadReqheadSuccessState(loadlist: r)));
    });
    on<LoadreqClearEvent>((event, emit) {
      emit(const LoadReqheadSuccessState(loadlist: null));
    });
  }
}
