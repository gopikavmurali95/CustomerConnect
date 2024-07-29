import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/must_sell_detail_model/must_sell_detail_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'must_sell_detail_event.dart';
part 'must_sell_detail_state.dart';
part 'must_sell_detail_bloc.freezed.dart';

@injectable
class MustSellDetailBloc
    extends Bloc<MustSellDetailEvent, MustSellDetailState> {
  final IMustSellRepo mustSellRepo;
  MustSellDetailBloc(this.mustSellRepo) : super(MustSellDetailState.initial()) {
    on<GetMustSellDetailsEvent>((event, emit) async {
      List<MustSellDetailModel> searchlistitems = [];

      Either<MainFailures, List<MustSellDetailModel>> details =
          await mustSellRepo.getMustSellDetail(event.headerID);

      emit(details.fold((l) => const MustSellDetailsFailedState(), (r) {
        searchlistitems = r
            .where((element) =>
                (element.prdCode ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.prdName ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.prdName ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetMustSellDetailState(
            details: event.searchQuery.isEmpty ? r : searchlistitems);
      }));
    });
    on<ClearMustSellDetailsEvent>((event, emit) {
      emit(const GetMustSellDetailState(details: null));
    });
  }
}
