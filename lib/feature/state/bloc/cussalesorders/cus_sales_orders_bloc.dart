import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/sales_orders_in_model/sales_orders_in_model.dart';
import 'package:customer_connect/feature/data/models/sales_orders_model/sales_orders_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cus_sales_orders_event.dart';
part 'cus_sales_orders_state.dart';
part 'cus_sales_orders_bloc.freezed.dart';

@injectable
class CusSalesOrdersBloc
    extends Bloc<CusSalesOrdersEvent, CusSalesOrdersState> {
  final ISalesOrdersRepo salesOrderRepo;
  CusSalesOrdersBloc(this.salesOrderRepo)
      : super(CusSalesOrdersState.initial()) {
    on<GetSalesOrdersEvent>(
      (event, emit) async {
        List<SalesOrdersModel> searcheditems = [];
        Either<MainFailures, List<SalesOrdersModel>> orders =
            await salesOrderRepo.getSalesOrders(event.salesIn);
        emit(
          orders.fold(
            (l) => const SalesOrdersFailedState(),
            (r) {
              searcheditems = r
                  .where((element) => element.orderId!
                      .toLowerCase()
                      .toUpperCase()
                      .contains(event.searchQuery.toUpperCase()))
                  .toList();
              return GetsalesOrdersState(
                  orders: event.searchQuery.isEmpty ? r : searcheditems);
            },
          ),
        );
      },
    );
    on<ClearsalesOrdersEvent>((event, emit) {
      emit(
        const GetsalesOrdersState(orders: null),
      );
    });
  }
}
