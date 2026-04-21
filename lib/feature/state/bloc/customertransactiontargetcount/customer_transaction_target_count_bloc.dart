import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/customer_transaction_target_count/customer_transaction_target_count.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'customer_transaction_target_count_event.dart';
part 'customer_transaction_target_count_state.dart';
part 'customer_transaction_target_count_bloc.freezed.dart';

@injectable
class CustomerTransactionTargetCountBloc extends Bloc<
    CustomerTransactionTargetCountEvent, CustomerTransactionTargetCountState> {
  final IApiRequestRepo apiRequestRepo;
  CustomerTransactionTargetCountBloc(this.apiRequestRepo)
      : super(CustomerTransactionTargetCountState.initial()) {
    on<TargetCountSuccessEvent>((event, emit) async {
      Map<String, String> inpara = {
        'userId': event.userId,
      };

      Either<MainFailures, String> resp = await apiRequestRepo.getApiRequest(
          customerTransactionTargetHeaderCountUrl, inpara);

      emit(resp.fold((l) => const TargetCountFailureState(), (r) {
        try {
          final json = jsonDecode(r);

          final result = json["result"][0];

          final resp = CustomerTransactionTargetCount.fromJson(result);

          return TargetCountSuccessState(count: resp);
        } catch (e) {
          return const TargetCountFailureState();
        }
      }));
    });
  }
}
