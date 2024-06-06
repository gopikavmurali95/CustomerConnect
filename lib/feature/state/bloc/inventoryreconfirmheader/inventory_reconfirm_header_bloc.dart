import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/inventory_reconfirm_header_model/inventory_reconfirm_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'inventory_reconfirm_header_event.dart';
part 'inventory_reconfirm_header_state.dart';
part 'inventory_reconfirm_header_bloc.freezed.dart';

@injectable
class InventoryReconfirmHeaderBloc
    extends Bloc<InventoryReconfirmHeaderEvent, InventoryReconfirmHeaderState> {
  final IinvetoryReconfirmationApprovalRepo iinvetoryReconfirmationApprovalRepo;
  InventoryReconfirmHeaderBloc(this.iinvetoryReconfirmationApprovalRepo)
      : super(InventoryReconfirmHeaderState.initial()) {
    on<GetInventoryReconfirmHeadersEvent>((event, emit) async {
      List<InventoryReconfirmHeaderModel> searchedItems = [];
      Either<MainFailures, List<InventoryReconfirmHeaderModel>> headers =
          await iinvetoryReconfirmationApprovalRepo
              .getInventoryReconfirmHeaders(event.mode);

      emit(
        headers.fold(
          (l) => const InventoryReconfirmheaderFailedState(),
          (r) {
            searchedItems = r
                .where((element) =>
                    element.iahTransId!
                        .toLowerCase()
                        .toUpperCase()
                        .contains(event.searchQuery.toUpperCase()) ||
                    element.rotName!
                        .toLowerCase()
                        .toUpperCase()
                        .contains(event.searchQuery.toUpperCase()) ||
                    element.usrName!
                        .toLowerCase()
                        .toUpperCase()
                        .contains(event.searchQuery.toUpperCase()))
                .toList();
            return GetInventoryReconfirmHeaderState(
                headers: event.searchQuery.isEmpty ? r : searchedItems);
          },
        ),
      );
    });
    on<ClearInventoryReconfirmHeaders>((event, emit) {
      emit(const GetInventoryReconfirmHeaderState(headers: null));
    });
  }
}
