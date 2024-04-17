import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/total_orders_inparas/total_orders_inparas.dart';
import 'package:customer_connect/feature/data/models/total_orders_model/total_orders_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'total_orders_header_event.dart';
part 'total_orders_header_state.dart';
part 'total_orders_header_bloc.freezed.dart';

@injectable
class TotalOrdersHeaderBloc
    extends Bloc<TotalOrdersHeaderEvent, TotalOrdersHeaderState> {
  final ITotalOrdersRepo totalorder;
  TotalOrdersHeaderBloc(this.totalorder)
      : super(TotalOrdersHeaderState.initial()) {
    on<GetTotalOrdersEvent>((event, emit) async {
      Either<MainFailures, List<TotalOrdersModel>> ordersheader =
          await totalorder.getTotalOrders(event.ordersin);
      List<TotalOrdersModel> searcheditems = [];
      emit(ordersheader.fold((l) => const TotalOrdersFailedState(), (r) {
        searcheditems = r
            .where((element) =>
                element.orderId!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.cusId!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        // return GetloadingHeaderState(
        //     loadingheaders: event.searchQuery.isEmpty ? r : searcheditems);
        return GetTotalOrderState(
            totalorders: event.searchQuery.isEmpty ? r : searcheditems);
      }));
    });
    on<TotalOrdersClearEvent>((event, emit) {
      emit(const GetTotalOrderState(totalorders: null));
    });
  }
}
