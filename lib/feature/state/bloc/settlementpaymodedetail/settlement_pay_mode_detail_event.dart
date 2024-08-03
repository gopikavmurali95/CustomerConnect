part of 'settlement_pay_mode_detail_bloc.dart';

@freezed
class SettlementPayModeDetailEvent with _$SettlementPayModeDetailEvent {
  const factory SettlementPayModeDetailEvent.getPaymodeDetailEvent(
      {required String udpID}) = GetPaymodeDetailEvent;

  const factory SettlementPayModeDetailEvent.clearPaymodeDetailEvent() =
      ClearPaymodeDetailEvent;
}
