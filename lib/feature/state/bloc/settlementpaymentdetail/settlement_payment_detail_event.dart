part of 'settlement_payment_detail_bloc.dart';

@freezed
class SettlementPaymentDetailEvent with _$SettlementPaymentDetailEvent {
  const factory SettlementPaymentDetailEvent.getPaymentDetailEvent(
      {required String udpID}) = GetPaymentDetailEvent;

  const factory SettlementPaymentDetailEvent.clearPaymentDetailEvent() =
      ClearPaymentDetailEvent;
}
