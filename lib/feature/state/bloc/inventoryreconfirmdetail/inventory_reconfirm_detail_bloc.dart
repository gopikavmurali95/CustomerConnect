import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/inventory_reconfirm_detail_model/inventory_reconfirm_detail_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'inventory_reconfirm_detail_event.dart';
part 'inventory_reconfirm_detail_state.dart';
part 'inventory_reconfirm_detail_bloc.freezed.dart';

@injectable
class InventoryReconfirmDetailBloc
    extends Bloc<InventoryReconfirmDetailEvent, InventoryReconfirmDetailState> {
  final IinvetoryReconfirmationApprovalRepo inventoryreconfrimrepo;
  InventoryReconfirmDetailBloc(this.inventoryreconfrimrepo)
      : super(InventoryReconfirmDetailState.initial()) {
    on<GetInventoryReconfirmDetailEvent>((event, emit) async {
      List<InventoryReconfirmDetailModel> searchedItems = [];
      Either<MainFailures, List<InventoryReconfirmDetailModel>> headers =
          await inventoryreconfrimrepo.getinventoryReconfirmDetail(event.reqID);

      emit(
        headers.fold(
          (l) => const InventoryReconfirmDetailFailedState(),
          (r) {
            searchedItems = r
                .where((element) =>
                    (element.prdCode ?? '')
                        .toLowerCase()
                        .toUpperCase()
                        .contains(event.searchQuery.toUpperCase()) ||
                    (element.prdName ?? '')
                        .toLowerCase()
                        .toUpperCase()
                        .contains(event.searchQuery.toUpperCase()))
                .toList();
            return GsetInventoryReconfirmDetailState(
                details: event.searchQuery.isEmpty ? r : searchedItems);
          },
        ),
      );
    });

    on<ClearInventoryReconfirmDetailEvent>((event, emit) {
      emit(const GsetInventoryReconfirmDetailState(details: null));
    });
  }
}
