import 'package:bloc/bloc.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settlement_payment_detail_event.dart';
part 'settlement_payment_detail_state.dart';
part 'settlement_payment_detail_bloc.freezed.dart';

class SettlementPaymentDetailBloc
    extends Bloc<SettlementPaymentDetailEvent, SettlementPaymentDetailState> {
  final ISettlementApprovalHeaderRepo paymentDetailRepo;
  SettlementPaymentDetailBloc(this.paymentDetailRepo)
      : super(SettlementPaymentDetailState.initial()) {
    on<SettlementPaymentDetailEvent>((event, emit) {});
  }
}
