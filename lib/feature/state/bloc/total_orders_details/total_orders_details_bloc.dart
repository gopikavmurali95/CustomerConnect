import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/total_orders_details_model/total_orders_details_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'total_orders_details_event.dart';
part 'total_orders_details_state.dart';
part 'total_orders_details_bloc.freezed.dart';

@injectable
class TotalOrdersDetailsBloc
    extends Bloc<TotalOrdersDetailsEvent, TotalOrdersDetailsState> {
  final ITotalOrdersRepo totalordersdetrepo;
  TotalOrdersDetailsBloc(this.totalordersdetrepo)
      : super(TotalOrdersDetailsState.initial()) {
    on<GetTotalOrdersDetailsEvent>((event, emit) async {
      Either<MainFailures, List<TotalOrdersDetailsModel>> orderdetails =
          await totalordersdetrepo.getOrderDetail(event.userID);

      List<TotalOrdersDetailsModel> searcheditems = [];
      emit(orderdetails.fold((l) => const TotalOrdersDetailsFailedState(), (r) {
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
        return GetTotalOrdersDetailsState(
            ordersdet: event.searchQuery.isEmpty ? r : searcheditems);
      }));
    });
    on((event, emit) => emit(
        const TotalOrdersDetailsState.getTotalOrdersDetailsState(
            ordersdet: null)));
  }
}
