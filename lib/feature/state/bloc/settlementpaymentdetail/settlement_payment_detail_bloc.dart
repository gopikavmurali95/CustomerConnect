import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/settlement_payment_detail_model/settlement_payment_detail_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'settlement_payment_detail_event.dart';
part 'settlement_payment_detail_state.dart';
part 'settlement_payment_detail_bloc.freezed.dart';

@injectable
class SettlementPaymentDetailBloc
    extends Bloc<SettlementPaymentDetailEvent, SettlementPaymentDetailState> {
  final ISettlementApprovalHeaderRepo paymentDetailRepo;
  SettlementPaymentDetailBloc(this.paymentDetailRepo)
      : super(SettlementPaymentDetailState.initial()) {
    on<GetPaymentDetailEvent>((event, emit) async {
      Either<MainFailures, List<SettlementPaymentDetailModel>> paymentDetails =
          await paymentDetailRepo.getPaymentDetails(event.udpID);

      emit(paymentDetails.fold((l) => const PaymentDetailFailedState(),
          (r) => GetPaymentDetailState(payment: r)));
    });
    on<ClearPaymentDetailEvent>((event, emit) {
      emit(const GetPaymentDetailState(payment: null));
    });
  }
}
