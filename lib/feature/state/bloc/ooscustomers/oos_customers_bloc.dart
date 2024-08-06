import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/out_of_stock_customer_model/out_of_stock_customer_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'oos_customers_event.dart';
part 'oos_customers_state.dart';
part 'oos_customers_bloc.freezed.dart';

@injectable
class OosCustomersBloc extends Bloc<OosCustomersEvent, OosCustomersState> {
  final IOutOfStockCustomersRepo outOfStockCustomersRepo;
  OosCustomersBloc(this.outOfStockCustomersRepo)
      : super(OosCustomersState.initial()) {
    on<GetOosCustomersEvent>((event, emit) async {
      Either<MainFailures, List<OutOfStockCustomerModel>> headers =
          await outOfStockCustomersRepo.getOutOfStockCustomers(
              event.fromDate, event.toDate);
      List<OutOfStockCustomerModel> searchlistitems = [];

      emit(headers.fold((l) => const OosCustomersFailedState(), (r) {
        searchlistitems = r
            .where((element) =>
                (element.cusCode ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                (element.cusName ?? '')
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetOosCustomersState(
            customers: event.searchQuery.isEmpty ? r : searchlistitems);
      }));
    });
    on<ClearOosCustomersEvent>((event, emit) {
      emit(const GetOosCustomersState(customers: null));
    });
  }
}
