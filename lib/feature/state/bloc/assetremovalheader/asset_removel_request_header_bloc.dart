import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/asset_removal_request_header_model/asset_removal_request_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'asset_removel_request_header_event.dart';
part 'asset_removel_request_header_state.dart';
part 'asset_removel_request_header_bloc.freezed.dart';

@injectable
class AssetRemovelRequestHeaderBloc extends Bloc<AssetRemovelRequestHeaderEvent,
    AssetRemovelRequestHeaderState> {
  final IAssetRemovalRequestRepo assetRemovalRequestRepo;
  AssetRemovelRequestHeaderBloc(this.assetRemovalRequestRepo)
      : super(AssetRemovelRequestHeaderState.initial()) {
    on<GetAllAssetRemovalHeadersEvent>((event, emit) async {
      Either<MainFailures, List<AssetRemovalRequestHeaderModel>> headers =
          await assetRemovalRequestRepo
              .getAssetRemovalApprovalHeaders(event.userID);

      emit(
        headers.fold(
          (l) => const AssetRemovalRequestHeaderFailedState(),
          (r) => GetAssetRemovalRequestHEadersState(headers: r),
        ),
      );
    });
    on<ClearAssetRemovalHeaderEvent>((event, emit) {
      emit(const GetAssetRemovalRequestHEadersState(headers: null));
    });
  }
}
