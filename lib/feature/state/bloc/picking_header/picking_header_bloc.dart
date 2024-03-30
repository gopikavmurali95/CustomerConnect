import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/models/picking_header_model/PickingInModel.dart';
import 'package:customer_connect/feature/data/models/picking_header_model/PickingOutModel.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../data/abstractrepo/abstractrepo.dart';

part 'picking_header_event.dart';
part 'picking_header_state.dart';
part 'picking_header_bloc.freezed.dart';

@injectable
class PickingHeaderBloc extends Bloc<PickingHeaderEvent, PickingHeaderState> {
  final IPickingHeaderRepo pickHead;

  PickingHeaderBloc(this.pickHead) : super(PickingHeaderState.initial()) {
    on<GetpickingHeaderEvent>((event, emit) async {
      Either<MainFailures, List<PickingOutModel>> pickingHead =
          await pickHead.getPickingHeaders(event.pickingHeadIn);

      emit(pickingHead.fold(
          (l) => const PickingHeaderState.pickingheaderFailedState(),
          (r) => PickingHeaderState.getPickingHeaderState(pickingOut: r)));
    });
    on<ClearPickingevent>((event, emit) {
      emit(const GetPickingHeaderState(pickingOut: null));
    });
  }
}
