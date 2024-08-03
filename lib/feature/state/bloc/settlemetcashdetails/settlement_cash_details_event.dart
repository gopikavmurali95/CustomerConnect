part of 'settlement_cash_details_bloc.dart';

@freezed
class SettlementCashDetailsEvent with _$SettlementCashDetailsEvent {
  const factory SettlementCashDetailsEvent.getCashDetailEvent(
      {required String udpID}) = GetCashDetailEvent;

  const factory SettlementCashDetailsEvent.clearCashDetailsEvent() =
      ClearCashDetailsEvent;
}
