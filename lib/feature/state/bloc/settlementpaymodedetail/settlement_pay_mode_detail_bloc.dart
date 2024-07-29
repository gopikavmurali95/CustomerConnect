import 'package:bloc/bloc.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/settlemenet_approval_paymode_detail_model/settlemenet_approval_paymode_detail_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settlement_pay_mode_detail_event.dart';
part 'settlement_pay_mode_detail_state.dart';
part 'settlement_pay_mode_detail_bloc.freezed.dart';

class SettlementPayModeDetailBloc
    extends Bloc<SettlementPayModeDetailEvent, SettlementPayModeDetailState> {
  final ISettlementApprovalHeaderRepo paymodeDetailRepo;
  SettlementPayModeDetailBloc(this.paymodeDetailRepo)
      : super(SettlementPayModeDetailState.initial()) {
    on<SettlementPayModeDetailEvent>((event, emit) {});
  }
}
