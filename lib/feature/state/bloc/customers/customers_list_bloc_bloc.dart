
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
      emit(state.copyWith(isLoading: true));
      // List<CusInsCustomersModel> searcheditems = [];
      Either<MainFailures, List<CusInsCustomersModel>> customers =
          await cusInsightsCustomersRepo.getCustomers(event.userId, event.area,
              event.subarea, event.route, event.searchQuery, event.pagenum);
              List<CusInsCustomersModel> oldcustomerlist = [];
              final currentState = state as GetCustomersSstate;
              oldcustomerlist.addAll(currentState.customers??[]);
      emit(customers.fold((l) => const GetCustomersSstate(customers: [], isLoading: false),
          (r) /* => GetCustomersSstate(customers: r) */{
            if (event.searchQuery.isNotEmpty) {
              oldcustomerlist.clear();
            }
            oldcustomerlist.addAll(r);
            return GetCustomersSstate(customers: oldcustomerlist, isLoading: false);
          }));

      
    });
    on<ClearCustomersEvent>((event, emit) {
      emit(const GetCustomersSstate(customers: null, isLoading: false));
    });

    
  }
}
