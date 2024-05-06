import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/asset_removal_approval_in_model/asset_removal_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/asset_removal_approve_out_model/asset_removal_approve_out_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'asset_removal_apprval_event.dart';
part 'asset_removal_apprval_state.dart';
part 'asset_removal_apprval_bloc.freezed.dart';

@injectable
class AssetRemovalApprvalBloc
    extends Bloc<AssetRemovalApprvalEvent, AssetRemovalApprvalState> {
  final IAssetRemovalRequestRepo assetRemovalRequestRepo;
  AssetRemovalApprvalBloc(this.assetRemovalRequestRepo)
      : super(AssetRemovalApprvalState.initial()) {
    on<ApproveAssetRemovalEvent>((event, emit) async {
      Either<MainFailures, AssetRemovalApproveOutModel> approve =
          await assetRemovalRequestRepo.assetRemovalApproval(event.approve);

      emit(approve.fold((l) => const AssetRemovalAApproveFailedState(),
          (r) => AssetRemovalApprovedState(response: r)));
    });
    on<AssetRemovalRejectEvent>((event, emit) async {
      Either<MainFailures, AssetRemovalApproveOutModel> approve =
          await assetRemovalRequestRepo.assetRemovalReject(event.reject);

      emit(approve.fold((l) => const AssetRemovalAApproveFailedState(),
          (r) => AssetRemovalApprovedState(response: r)));
    });
    on<AssetRemovalApprovalLoadingEvent>((event, emit) {
      emit(const AssetRemovalApproveLoadingState());
    });
    on<ClearAssetRemovalapprovalEvent>((event, emit) {
      emit(const AssetRemovalApprovedState(response: null));
    });
  }
}
