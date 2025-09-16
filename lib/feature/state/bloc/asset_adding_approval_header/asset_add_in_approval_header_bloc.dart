import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/asset_add_request_header_model/asset_add_request_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'asset_add_in_approval_header_event.dart';
part 'asset_add_in_approval_header_state.dart';
part 'asset_add_in_approval_header_bloc.freezed.dart';

@injectable
class AssetAddInApprovalHeaderBloc
    extends Bloc<AssetAddInApprovalHeaderEvent, AssetAddInApprovalHeaderState> {
  final IAssetAddApprovalRepo assetAddApprovalRepo;
  AssetAddInApprovalHeaderBloc(this.assetAddApprovalRepo)
      : super(AssetAddInApprovalHeaderState.initial()) {
    on<GetallAssetAddingRequestHeadersEvent>((event, emit) async {
      List<AssetAddRequestHeaderModel> searcheditems = [];
      Either<MainFailures, List<AssetAddRequestHeaderModel>> headers =
          await assetAddApprovalRepo.getAssetAddApprovalHeaders(
              event.userId,
              /* event.companyCode,
              event.expStartDate,
              event.expEndDate,
              event.currentlevel */);

      emit(headers.fold((l) => const AssetAddingHeaderFailedState(), (r) {
        searcheditems = r
            .where((element) =>
                element.aahAstId!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.astName!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.cusCode!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.cusName!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetAllAssetAddingHeadersState(
            headers: event.searchQuery.isEmpty ? r : searcheditems);
      }));
    });

    on<ClearAllRequestHeadersState>((event, emit) {
      emit(const GetAllAssetAddingHeadersState(headers: null));
    });
  }
}
