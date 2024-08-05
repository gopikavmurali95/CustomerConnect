import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/out_of_stock_items_customers_model/out_of_stock_items_customers_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'out_of_stock_item_customers_event.dart';
part 'out_of_stock_item_customers_state.dart';
part 'out_of_stock_item_customers_bloc.freezed.dart';

@injectable
class OutOfStockItemCustomersBloc
    extends Bloc<OutOfStockItemCustomersEvent, OutOfStockItemCustomersState> {
  final IOutOfStockProductsRepo outOfStockProductsRepo;
  OutOfStockItemCustomersBloc(this.outOfStockProductsRepo)
      : super(OutOfStockItemCustomersState.initial()) {
    on<GetOutOfStockItemCustomersEvent>((event, emit) async {
      List<OutOfStockItemsCustomersModel> searchlistitems = [];

      Either<MainFailures, List<OutOfStockItemsCustomersModel>> customers =
          await outOfStockProductsRepo.getOutOfStockItemsCustomers(event.osiID);

      emit(customers.fold((l) => const OutofStateItemCustomersFailedState(),
          (r) {
        searchlistitems = r
            .where((element) =>
                (element.cusCode ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.cusName ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.rotCode ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetOutOfStockItemCustomersState(
            details: event.searchQuery.isEmpty ? r : searchlistitems);
      }));
    });

    on<ClearOutOfStockItemCustomersEvent>((event, emit) {
      emit(const GetOutOfStockItemCustomersState(details: null));
    });
  }
}
