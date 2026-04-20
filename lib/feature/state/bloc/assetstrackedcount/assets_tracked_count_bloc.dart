import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/assets_tracked_in_merch_model/assets_tracked_in_merch_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'assets_tracked_count_event.dart';
part 'assets_tracked_count_state.dart';
part 'assets_tracked_count_bloc.freezed.dart';

@injectable
class AssetsTrackedCountBloc
    extends Bloc<AssetsTrackedCountEvent, AssetsTrackedCountState> {
  final IMerchandisingDashBoardRepo assetsTrackedCountRepo;
  AssetsTrackedCountBloc(this.assetsTrackedCountRepo)
      : super(AssetsTrackedCountState.initial()) {
    on<AssetsTrackedCountSuccessEvent>((event, emit) async {
      Either<MainFailures, AssetsTrackedInMerchModel> assetsTracked =
          await assetsTrackedCountRepo.getAssetsTrackedInMerch(event.userId);

      emit(assetsTracked.fold((l) => const AssetsTrackedCountFailedState(),
          (r) => AssetsTrackedCountSuccessState(assetsTracked: r)));
    });
    on<AssetsTrackedCountClearEvent>((event, emit) {
      emit(const AssetsTrackedCountSuccessState(assetsTracked: null));
    });
  }
}
