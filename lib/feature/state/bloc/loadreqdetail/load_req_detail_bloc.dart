import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/abstractrepo/abstractrepo.dart';
import '../../../data/models/load_req_detail_model/LoadReqDetailModel.dart';

part 'load_req_detail_event.dart';
part 'load_req_detail_state.dart';
part 'load_req_detail_bloc.freezed.dart';

@injectable
class LoadReqDetailBloc extends Bloc<LoadReqDetailEvent, LoadReqDetailState> {
  final ILoadRequestHeaderRepo loadreqdetRepo;

  LoadReqDetailBloc(this.loadreqdetRepo) : super(LoadReqDetailState.initial()) {

    List<LoadReqDetailModel> searchlistitems = [];
    on<GetloadreqdetailEvent>((event, emit) async {
      Either<MainFailures, List<LoadReqDetailModel>> details =
          await loadreqdetRepo.loadreqdetailList(event.reqId);

      emit(details.fold((l) => const LoadreqDetailFailedState(),
          (r) {
          searchlistitems = r.where((element) =>
          (element.lrdID??'')
              .toLowerCase().
          toUpperCase().
          contains(event.searchQuery.toUpperCase())||
              (element.prdName??'').
          toLowerCase().
          toUpperCase().
          contains(event.searchQuery.toUpperCase())).toList();
          return  LoadreqDetailSuccessState(details: event.searchQuery.isEmpty ? r :searchlistitems);
          }));
    });

    on<ClearLodReqDetailEvent>((event, emit) {
      emit(const LoadreqDetailSuccessState(details: null));
    });
  }
}
