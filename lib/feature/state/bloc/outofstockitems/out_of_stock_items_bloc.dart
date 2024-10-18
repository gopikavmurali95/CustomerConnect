import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/out_of_stock_items_model/out_of_stock_items_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'out_of_stock_items_event.dart';
part 'out_of_stock_items_state.dart';
part 'out_of_stock_items_bloc.freezed.dart';

@injectable
class OutOfStockItemsBloc
    extends Bloc<OutOfStockItemsEvent, OutOfStockItemsState> {
  final IOutOfStockProductsRepo outOfStockProductsRepo;
  OutOfStockItemsBloc(this.outOfStockProductsRepo)
      : super(OutOfStockItemsState.initial()) {
    on<GetOutOfStockItemsEvent>((event, emit) async {
      Either<MainFailures, List<OutOfStockItemsModel>> items =
          await outOfStockProductsRepo.getOutOfStockItems(
              event.fromDate, event.toDate);
      List<OutOfStockItemsModel> searchlistitems = [];

      emit(items.fold(
        (l) => const OutOfStockItemsFailedState(),
        (r) {
          searchlistitems = r
              .where((element) =>
                  (element.prdCode ?? '')
                      .toLowerCase()
                      .toUpperCase()
                      .contains(event.searchQuery.toUpperCase()) ||
                  (element.prdName ?? '')
                      .toLowerCase()
                      .toUpperCase()
                      .contains(event.searchQuery.toUpperCase()) ||
                  (element.prdArName ?? '')
                      .toLowerCase()
                      .toUpperCase()
                      .contains(event.searchQuery.toUpperCase()))
              .toList();
          return GetOutOfSockItemsState(
              headers: event.searchQuery.isEmpty ? r : searchlistitems);
        },
      ));
    });

    on<ClearOutOfStockItems>((event, emit) {
      emit(const GetOutOfSockItemsState(headers: null));
    });
  }
}
