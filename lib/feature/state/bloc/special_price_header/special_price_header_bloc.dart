import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/special_price_header_model/special_price_header_model.dart';
import 'package:customer_connect/feature/data/models/special_price_header_outparas/special_price_header_outparas.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'special_price_header_event.dart';
part 'special_price_header_state.dart';
part 'special_price_header_bloc.freezed.dart';

@injectable
class SpecialPriceHeaderBloc
    extends Bloc<SpecialPriceHeaderEvent, SpecialPriceHeaderState> {
  final ISpecialPriceRepo spPriceRepo;
  SpecialPriceHeaderBloc(this.spPriceRepo)
      : super(SpecialPriceHeaderState.initial()) {
    on<GetSpecialPriceHeaderEvent>((event, emit) async {
      Either<MainFailures, List<SpecialPriceHeaderOutparas>> pricelist =
          await spPriceRepo.getSpecialPrice(event.spPriceInparas);
      List<SpecialPriceHeaderOutparas> searcheditems = [];
      emit(pricelist.fold((l) => const SpeciaPriceHeaderFailedState(), (r) {
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
        return GetSspecialPriceHeaderState(
            spPrice: event.searchQuery.isEmpty ? r : searcheditems);
      }));
    });
    on<ClearSpecialPriceEvent>((event, emit) =>
        emit(const GetSspecialPriceHeaderState(spPrice: null)));
  }
}
