import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/settlemet_approvalcash_detail_model/settlemet_approvalcash_detail_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'settlement_cash_details_event.dart';
part 'settlement_cash_details_state.dart';
part 'settlement_cash_details_bloc.freezed.dart';

@injectable
class SettlementCashDetailsBloc
    extends Bloc<SettlementCashDetailsEvent, SettlementCashDetailsState> {
  final ISettlementApprovalHeaderRepo cashDetailRepo;

  SettlementCashDetailsBloc(this.cashDetailRepo)
      : super(SettlementCashDetailsState.initial()) {
    on<GetCashDetailEvent>((event, emit) async {
      Either<MainFailures, SettlemetApprovalcashDetailModel> cashDetails =
          await cashDetailRepo.getSttlAppCashDetails(event.udpID);

      emit(cashDetails.fold((l) => const CashDetailFailedState(), (r) {
        log(jsonEncode(r));
        return GetCashDetailsState(cash: r);
      }));
    });

    on<ClearCashDetailsEvent>((event, emit) {
      emit(const GetCashDetailsState(cash: null));
    });
  }
}
