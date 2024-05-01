import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/price_change_header_model/price_change_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'price_change_header_event.dart';
part 'price_change_header_state.dart';
part 'price_change_header_bloc.freezed.dart';

@injectable
class PriceChangeHeaderBloc
    extends Bloc<PriceChangeHeaderEvent, PriceChangeHeaderState> {
  final IPriceChangeRepo pricechange;
  PriceChangeHeaderBloc(this.pricechange)
      : super(PriceChangeHeaderState.initial()) {
    on<GetPriceChangeHeaderEvent>((event, emit) async {
      Either<MainFailures, List<PriceChangeHeaderModel>> pchange =
          await pricechange.priceChangeList(event.rotID);
      emit(pchange.fold((l) => const PriceChangeFailureState(),
          (r) => GetPriceChangeState(pcHeader: r)));
    });
    on<ClearPriceChangeHeader>((event, emit) {
      emit(const GetPriceChangeState(pcHeader: null));
    });
  }
}
