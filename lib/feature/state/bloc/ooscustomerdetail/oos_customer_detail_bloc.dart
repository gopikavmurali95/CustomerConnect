import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/out_of_stock_customer_detail_model/out_of_stock_customer_detail_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'oos_customer_detail_event.dart';
part 'oos_customer_detail_state.dart';
part 'oos_customer_detail_bloc.freezed.dart';

@injectable
class OosCustomerDetailBloc
    extends Bloc<OosCustomerDetailEvent, OosCustomerDetailState> {
  final IOutOfStockCustomersRepo outOfStockCustomersRepo;
  OosCustomerDetailBloc(this.outOfStockCustomersRepo)
      : super(OosCustomerDetailState.initial()) {
    on<GetOosCustomerDetailEvent>((event, emit) async {
      Either<MainFailures, List<OutOfStockCustomerDetailModel>> details =
          await outOfStockCustomersRepo
              .getOutOfStockCustomersDetail(event.cusID);
      List<OutOfStockCustomerDetailModel> searchlistitems = [];

      emit(details.fold((l) => const OosCustomersDetailFailedState(), (r) {
        searchlistitems = r
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
        return GetOosCustomerDetailsState(
            details: event.searchQuery.isEmpty ? r : searchlistitems);
      }));
    });

    on<ClearOosCustomerDetilEvent>((event, emit) {
      emit(const GetOosCustomerDetailsState(details: null));
    });
  }
}
