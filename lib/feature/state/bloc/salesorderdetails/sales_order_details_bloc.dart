import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/sales_order_details_inparas_model/sales_order_details_inparas_model.dart';
import 'package:customer_connect/feature/data/models/sales_order_details_model/sales_order_details_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sales_order_details_event.dart';
part 'sales_order_details_state.dart';
part 'sales_order_details_bloc.freezed.dart';

@injectable
class SalesOrderDetailsBloc
    extends Bloc<SalesOrderDetailsEvent, SalesOrderDetailsState> {
  final ISalesOrdersRepo salesdetails;
  SalesOrderDetailsBloc(this.salesdetails)
      : super(SalesOrderDetailsState.initial()) {
    on<GetSalesOrderDetailsEvent>((event, emit) async {
      Either<MainFailures, List<SalesOrderDetailsModel>> details =
          await salesdetails.getSalesOrderdetails(event.salesin);

      List<SalesOrderDetailsModel> searcheditems = [];
      emit(details.fold((l) => const SalesOrderDetailsFailed(), (r) {
        searcheditems = r
            .where((element) =>
                element.prdCode!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.prdName!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetSalesOrderDetails(
            salesOrderDetails: event.searchQuery.isEmpty ? r : searcheditems);
      }));
    });

    on<ClearSalesOrderDetails>((event, emit) {
      emit(const GetSalesOrderDetails(salesOrderDetails: null));
    });
  }
}
