import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/price_change_details_model/price_change_details_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'price_change_details_event.dart';
part 'price_change_details_state.dart';
part 'price_change_details_bloc.freezed.dart';

@injectable
class PriceChangeDetailsBloc
    extends Bloc<PriceChangeDetailsEvent, PriceChangeDetailsState> {
  final IPriceChangeRepo priceDetRepo;
  PriceChangeDetailsBloc(this.priceDetRepo)
      : super(PriceChangeDetailsState.initial()) {
    on<GetPriceChangeDetailsEvent>((event, emit) async {
      Either<MainFailures, List<PriceChangeDetailsModel>> pdetails =
          await priceDetRepo.priceChangeDetails(event.pchID);
      emit(pdetails.fold(
          (l) => const PriceChangeDetailsState.priceChangedetailsFailed(),
          (r) => GetPRiceChangeDetailsState(pcDetails: r)));
    });
    on<ClearPriceChangeDetails>((event, emit) {
      emit(
          const PriceChangeDetailsState.getPRiceChangeDetails(pcDetails: null));
    });
  }
}
