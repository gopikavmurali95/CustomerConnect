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
    List<LoadReqHeaderModel> searchlist = [];
    on<LoadreqSuccessEvent>((event, emit) async {
      Either<MainFailures, List<LoadReqHeaderModel>> loadreqlist =
          await loadReqstHeaderRepo.loadreqHeaderList(event.userId,event.mode);
      emit(loadreqlist.fold((l) => const LoadReqheadFailedState(),
          (r) {
            searchlist =  r
              .where((element) =>
          element.rotID!.
          toLowerCase().
          toUpperCase().
          contains(event.searchQuery.toUpperCase()) ||
              element.lrhNumber!.
              toLowerCase().
              toUpperCase().
              contains(event.searchQuery.toUpperCase())||

              element.userID!.
          toLowerCase().
          toUpperCase().
          contains(event.searchQuery.toUpperCase())||
              element.usrName!.
              toLowerCase().
              toUpperCase().
              contains(event.searchQuery.toUpperCase())||
              element.rotCode!
              .toLowerCase().
              toUpperCase().
              contains(event.searchQuery.toUpperCase())).toList();
          return  LoadReqheadSuccessState(loadlist: event.searchQuery.isEmpty ? r : searchlist);
      }));
    });
    on<LoadreqClearEvent>((event, emit) {
      emit(const LoadReqheadSuccessState(loadlist: null));
    });
  }
}
