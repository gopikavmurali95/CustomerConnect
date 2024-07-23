import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/must_sell_header_model/must_sell_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'must_sell_header_event.dart';
part 'must_sell_header_state.dart';
part 'must_sell_header_bloc.freezed.dart';

@injectable
class MustSellHeaderBloc
    extends Bloc<MustSellHeaderEvent, MustSellHeaderState> {
  final IMustSellRepo mustSellRepo;
  MustSellHeaderBloc(this.mustSellRepo) : super(MustSellHeaderState.initial()) {
    on<GetMustSellHeadersEvent>((event, emit) async {
      List<MustSellHeaderModel> searchlistitems = [];

      Either<MainFailures, List<MustSellHeaderModel>> headers =
          await mustSellRepo.getMustSellHeaders(event.mode);

      emit(headers.fold((l) => const MustSellHeadersFailedState(), (r) {
        searchlistitems = r
            .where((element) =>
                (element.rotName ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.msaTransId ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.cuscode ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.cusname ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetMustsellHeadersState(
            headers: event.searchQuery.isEmpty ? r : searchlistitems);
      }));
    });
    on<ClearMustSellHeadersEvent>((event, emit) {
      emit(const GetMustsellHeadersState(headers: null));
    });
  }
}
