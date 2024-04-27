import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/price_change_reason_model/price_change_reason_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_change_reasons_event.dart';
part 'price_change_reasons_state.dart';
part 'price_change_reasons_bloc.freezed.dart';

class PriceChangeReasonsBloc
    extends Bloc<PriceChangeReasonsEvent, PriceChangeReasonsState> {
  final IPriceChangeRepo pcReason;
  PriceChangeReasonsBloc(this.pcReason)
      : super(PriceChangeReasonsState.initial()) {
    on<GetPRiceChangeReasonEvent>((event, emit) async {
      Either<MainFailures, List<PriceChangeReasonModel>> reason =
          await pcReason.getPricChangeReasons(event.rsnType);
      emit(reason.fold((l) => const PriceChangeReasonFailed(),
          (r) => GetPriceChangeReasonsState(reasons: r)));
    });
    on<ClearPriceChangeReason>((event, emit) {
      emit(const GetPriceChangeReasonsState(reasons: null));
    });
  }
}
