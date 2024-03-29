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
      emit(pricelist.fold((l) => const SpeciaPriceHeaderFailedState(),
          (r) => GetSspecialPriceHeaderState(spPrice: r)));
    });
    on<ClearSpecialPriceEvent>((event, emit) =>
        emit(const GetSspecialPriceHeaderState(spPrice: null)));
  }
}
