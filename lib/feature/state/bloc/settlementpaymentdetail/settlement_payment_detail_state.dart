part of 'settlement_payment_detail_bloc.dart';

@freezed
class SettlementPaymentDetailState with _$SettlementPaymentDetailState {
  const factory SettlementPaymentDetailState.getPaymentDetailState(
      {required SettlementPaymentDetailModel? payment}) = GetPaymentDetailState;

  const factory SettlementPaymentDetailState.paymentDetailFailedState() =
      PaymentDetailFailedState;

  factory SettlementPaymentDetailState.initial() =>
      const SettlementPaymentDetailState.getPaymentDetailState(payment: null);
}
