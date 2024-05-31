import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_reason_model/partial_delivery_reason_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'partial_delivery_reason_event.dart';
part 'partial_delivery_reason_state.dart';
part 'partial_delivery_reason_bloc.freezed.dart';

@injectable
class PartialDeliveryReasonBloc
    extends Bloc<PartialDeliveryReasonEvent, PartialDeliveryReasonState> {
  final IPartialDeliveryRepo reasons;
  PartialDeliveryReasonBloc(this.reasons)
      : super(PartialDeliveryReasonState.initial()) {
    on<GetPartialDeliveryEvent>((event, emit) async {
      Either<MainFailures, List<PartialDeliveryReasonModel>> reasonslist =
          await reasons.getPartialDeliveryReasons(event.rsnType);
      emit(reasonslist.fold((l) => const PartialDeliveryFailedState(),
          (r) => GetPArtialDeliveryReasonsState(reasons: r)));
    });
    on<ClearReasonPartialDelivery>((event, emit) {
      emit(const PartialDeliveryReasonState.getPArtialDeliveryReasonsState(
          reasons: null));
    });
  }
}
