import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_ins_customer_count_model/cus_ins_customer_count_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cus_ins_customers_count_event.dart';
part 'cus_ins_customers_count_state.dart';
part 'cus_ins_customers_count_bloc.freezed.dart';

@injectable
class CusInsCustomersCountBloc
    extends Bloc<CusInsCustomersCountEvent, CusInsCustomersCountState> {
  final ICusInsightsCustomersRepo cusCount;
  CusInsCustomersCountBloc(this.cusCount)
      : super(CusInsCustomersCountState.initial()) {
    on<GetCustomersCountEvent>((event, emit) async {
      Either<MainFailures, CusInsCustomerCountModel> count =
          await cusCount.getCustomerscount(event.userId, event.area,
              event.subarea, event.route, event.searchString, event.pagenum);
      emit(count.fold((l) => const GetCustomersCountFailedState(),
          (r) => GetCustomersCountState(count: r)));
    });
    on<ClearCustomerCount>((event, emit) {
      emit(const GetCustomersCountState(count: null));
    });
  }
}
