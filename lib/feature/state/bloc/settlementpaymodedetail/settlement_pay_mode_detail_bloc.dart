import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/settlemenet_approval_pay_mode_detail_model/settlemenet_approval_pay_mode_detail_model.dart';

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settlement_pay_mode_detail_event.dart';
part 'settlement_pay_mode_detail_state.dart';
part 'settlement_pay_mode_detail_bloc.freezed.dart';

@injectable
class SettlementPayModeDetailBloc
    extends Bloc<SettlementPayModeDetailEvent, SettlementPayModeDetailState> {
  final ISettlementApprovalHeaderRepo paymodeDetailRepo;
  SettlementPayModeDetailBloc(this.paymodeDetailRepo)
      : super(SettlementPayModeDetailState.initial()) {
    on<GetPaymodeDetailEvent>((event, emit) async {
      Either<MainFailures, List<SettlemenetApprovalPayModeDetailModel>>
          paymodeDetails =
          await paymodeDetailRepo.getPayModeDetails(event.udpID);

      emit(paymodeDetails.fold((l) => const PaymodeDetailFailedState(), (r) {
        return GetSettlementPayModeDetailState(paymode: r);
      }));
    });
    on<ClearPaymodeDetailEvent>((event, emit) {
      emit(const GetSettlementPayModeDetailState(paymode: null));
    });
  }
}
