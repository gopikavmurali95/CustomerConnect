import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/sales_oder_count_model/sales_oder_count_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sales_order_count_event.dart';
part 'sales_order_count_state.dart';
part 'sales_order_count_bloc.freezed.dart';

@injectable
class SalesOrderCountBloc
    extends Bloc<SalesOrderCountEvent, SalesOrderCountState> {
  final ISalesOrderRepo salesrepo;
  SalesOrderCountBloc(this.salesrepo) : super(SalesOrderCountState.initial()) {
    on<SalesOrderCountSuccessEvent>((event, emit) async {
      Either<MainFailures, SalesOderCountModel> count =
          await salesrepo.soCount(event.userID);
      emit(count.fold((l) => const SalesOrderCountFailedState(),
          (r) => SalesOrderCountSuccessState(salesord: r)));
    });
    on((event, emit) =>
        emit(const SalesOrderCountSuccessState(salesord: null)));
  }
}
