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

      List<PickingOutModel> searcheditems = [];

      emit(pickingHead.fold(
          (l) => const PickingHeaderState.pickingheaderFailedState(), (r) {
        searcheditems = r
            .where((element) =>
                element.pickingNumber!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.rotCode!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetPickingHeaderState(
            pickingOut: event.searchQuery.isEmpty ? r : searcheditems);
      }));
    });
    on<ClearPickingevent>((event, emit) {
      emit(const GetPickingHeaderState(pickingOut: null));
    });
  }
}
