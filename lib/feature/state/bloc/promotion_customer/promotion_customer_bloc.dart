import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/promotion_customer_model/promotion_customer_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'promotion_customer_event.dart';
part 'promotion_customer_state.dart';
part 'promotion_customer_bloc.freezed.dart';

@injectable
class PromotionCustomerBloc
    extends Bloc<PromotionCustomerEvent, PromotionCustomerState> {
  final IPromotionHeaderRepo promocustomer;
  PromotionCustomerBloc(this.promocustomer)
      : super(PromotionCustomerState.initial()) {
    on<GetPromotionCustomerEvent>((event, emit) async {
      Either<MainFailures, List<PromotionCustomerModel>> customers =
          await promocustomer.getPromotionCustomer(event.id);
      log(customers.fold((l) => 'empty', (r) => r.length.toString()));
      emit(customers.fold((l) => const PromotionCustomerFailed(),
          (r) => GetPromotionCustomerState(promotioncust: r)));
    });
    on<ClearOromotionCustomer>((event, emit) {
      emit(const GetPromotionCustomerState(promotioncust: null));
    });
  }
}
