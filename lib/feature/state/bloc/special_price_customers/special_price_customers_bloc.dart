import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/special_price_customer_model/special_price_customer_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'special_price_customers_event.dart';
part 'special_price_customers_state.dart';
part 'special_price_customers_bloc.freezed.dart';

@injectable
class SpecialPriceCustomersBloc
    extends Bloc<SpecialPriceCustomersEvent, SpecialPriceCustomersState> {
  final ISpecialPriceRepo spCustomerRepo;
  SpecialPriceCustomersBloc(this.spCustomerRepo)
      : super(SpecialPriceCustomersState.initial()) {
    on<GetSpecialPriceCustomersEvent>((event, emit) async {
      Either<MainFailures, List<SpecialPriceCustomerModel>> customerList =
          await spCustomerRepo.getPriceCustomer(
              event.userID, event.fromDate, event.todate);
      List<SpecialPriceCustomerModel> searcheditems = [];
      emit(customerList.fold((l) => const SpecialPriceCustomersFailedState(),
          (r) {
        searcheditems = r
            .where((element) =>
                element.cusCode!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.cusName!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return GetSpecialPriceCustomersState(
            spCustomers: event.searchQuery.isEmpty ? r : searcheditems);
      }));
    });
    on<ClearSpecialPriceCustomer>((event, emit) {
      emit(const GetSpecialPriceCustomersState(spCustomers: null));
    });
  }
}
