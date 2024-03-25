import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/picking_and_loadin_counts_model/picking_and_loadin_counts_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'picking_and_loading_count_event.dart';
part 'picking_and_loading_count_state.dart';
part 'picking_and_loading_count_bloc.freezed.dart';

@injectable
class PickingAndLoadingCountBloc
    extends Bloc<PickingAndLoadingCountEvent, PickingAndLoadingCountState> {
  final IPickingAndLoadinCountRepo plCountRepo;
  PickingAndLoadingCountBloc(this.plCountRepo)
      : super(PickingAndLoadingCountState.initial()) {
    on<PlCountSuccessEvent>((event, emit) async {
      Either<MainFailures, PickingAndLoadinCountsModel> count =
          await plCountRepo.plCount(event.userID);
      emit(count.fold(
          (l) => const PickingAndLoadingCountState.plCountFailedState(),
          (r) => PickingAndLoadingCountState.plCountSuccessState(plCount: r)));
    });
  }
}
