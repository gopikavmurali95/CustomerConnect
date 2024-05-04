import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/asset_add_approval_in_model/asset_add_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/asset_add_resp_out_model/asset_add_resp_out_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'asset_adding_approval_and_rject_bloc_event.dart';
part 'asset_adding_approval_and_rject_bloc_state.dart';
part 'asset_adding_approval_and_rject_bloc_bloc.freezed.dart';

@injectable
class AssetAddingApprovalAndRjectBlocBloc extends Bloc<
    AssetAddingApprovalAndRjectBlocEvent,
    AssetAddingApprovalAndRjectBlocState> {
  final IAssetAddApprovalRepo assetAddApprovalRepo;
  AssetAddingApprovalAndRjectBlocBloc(this.assetAddApprovalRepo)
      : super(AssetAddingApprovalAndRjectBlocState.initial()) {
    on<AssetAddingApproveEvent>((event, emit) async {
      if (event.approve.serialNum != null) {
        Either<MainFailures, AssetAddRespOutModel> resp =
            await assetAddApprovalRepo.assetAddApproval(event.approve);

        emit(resp.fold((l) => const AssetAddingApprovalFailedState(),
            (r) => AssetAddingApprovalStates(response: r, isApproval: true)));
      } else {
        Either<MainFailures, AssetAddRespOutModel> resp =
            await assetAddApprovalRepo.assetAddReject(event.approve);

        emit(resp.fold((l) => const AssetAddingApprovalFailedState(),
            (r) => AssetAddingApprovalStates(response: r, isApproval: false)));
      }
    });
    on<ClearAssetAddingApprovalEvent>((event, emit) {
      emit(const AssetAddingApprovalStates(response: null, isApproval: false));
    });

    on<AddAssetAddingApproveLoadingEvent>((event, emit) {
      emit(const AssetAddingApprovalLoadingState());
    });
  }
}
