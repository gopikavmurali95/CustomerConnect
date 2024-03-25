import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/customer_transaction_model/customer_transaction_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'customer_transaction_event.dart';
part 'customer_transaction_state.dart';
part 'customer_transaction_bloc.freezed.dart';

@injectable
class CustomerTransactionBloc
    extends Bloc<CustomerTransactionEvent, CustomerTransactionState> {
  final ICustomerTransactionRepo cusTransRepo;
  CustomerTransactionBloc(this.cusTransRepo)
      : super(CustomerTransactionState.initial()) {
    on<CusTransactionSuccessEvent>((event, emit) async {
      Either<MainFailures, CustomerTransactionModel> cus =
          await cusTransRepo.ctCount(event.userID);
      emit(cus.fold((l) => const CusTransactionFailedState(),
          (r) => CusTransactionSuccessState(customertrans: r)));
    });
  }
}
