import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/partial_delivery_reason_model/partial_delivery_reason_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'partial_delivery_reason_state.dart';
part 'partial_delivery_reason_cubit.freezed.dart';

@injectable
class PartialDeliveryReasonCubit extends Cubit<PartialDeliveryReasonState> {
  final IPartialDeliveryRepo partialDeliveryRepo;
  PartialDeliveryReasonCubit(this.partialDeliveryRepo)
      : super(PartialDeliveryReasonState.initial());

  void getReasons(String rsntype) async {
    Either<MainFailures, List<PartialDeliveryReasonModel>> resons =
        await partialDeliveryRepo.getPartialDeliveryReasons('rsnType');

    emit(resons.fold((l) => const PartialDeliveryReasonsFailedState(),
        (r) => GetpartialDeliveryReasonsState(reasons: r)));
  }
}
