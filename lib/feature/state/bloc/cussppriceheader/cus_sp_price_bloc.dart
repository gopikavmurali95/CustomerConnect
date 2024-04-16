import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_sp_price_in_model/cus_sp_price_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_sp_price_model/cus_sp_price_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cus_sp_price_event.dart';
part 'cus_sp_price_state.dart';
part 'cus_sp_price_bloc.freezed.dart';

@injectable
class CusSpPriceBloc extends Bloc<CusSpPriceEvent, CusSpPriceState> {
  final ICusSpPriceRepo cusSpPriceRepo;
  CusSpPriceBloc(this.cusSpPriceRepo) : super(CusSpPriceState.initial()) {
    on<GetCusSpPriceHeadersEvent>((event, emit) async {
      List<CusSpPriceModel> searcheditems = [];
      Either<MainFailures, List<CusSpPriceModel>> spprice =
          await cusSpPriceRepo.getCusSpPriceHeaders(event.cuIN);
      emit(
        spprice.fold(
          (l) => const CusSpPriceHeaderFailedState(),
          (r) {
            searcheditems = r
                .where((element) =>
                    element.prhCode!
                        .toLowerCase()
                        .toUpperCase()
                        .contains(event.searchQuery.toUpperCase()) ||
                    element.prhName!
                        .toLowerCase()
                        .toUpperCase()
                        .contains(event.searchQuery.toUpperCase()))
                .toList();
            return GetCusSpPriceHeadersState(
                headers: event.searchQuery.isEmpty ? r : searcheditems);
          },
        ),
      );
    });
    on<ClearCusSpPriceHeaderEvent>((event, emit) {
      emit(const GetCusSpPriceHeadersState(headers: null));
    });
  }
}
