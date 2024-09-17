import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customers_model/cus_ins_customers_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'customers_list_bloc_event.dart';
part 'customers_list_bloc_state.dart';
part 'customers_list_bloc_bloc.freezed.dart';

@injectable
class CustomersListBlocBloc
    extends Bloc<CustomersListBlocEvent, CustomersListBlocState> {
  final ICusInsightsCustomersRepo cusInsightsCustomersRepo;
  CustomersListBlocBloc(this.cusInsightsCustomersRepo)
      : super(CustomersListBlocState.initial()) {
    on<GetCustomersEvent>((event, emit) async {
      // List<CusInsCustomersModel> searcheditems = [];
      Either<MainFailures, List<CusInsCustomersModel>> customers =
          await cusInsightsCustomersRepo.getCustomers(
              event.userId, event.area, event.subarea, event.route, event.searchQuery);
              emit(customers.fold((l) => const GetcustomersFailedState(), (r) => GetCustomersSstate(customers: r)));

      /* emit(customers.fold((l) => const GetcustomersFailedState(), (r) {
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
        return GetCustomersSstate(
            customers: event.searchQuery.isEmpty ? r : searcheditems);
      })); */
    });
    on<ClearCustomersEvent>((event, emit) {
      emit(const GetCustomersSstate(customers: null));
    });

    on<RestCustomersEvent>((event, emit) {
      emit(const CustomersResetState());
    });
  }
}
