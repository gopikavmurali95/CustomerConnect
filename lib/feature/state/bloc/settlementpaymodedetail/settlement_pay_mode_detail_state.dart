part of 'settlement_pay_mode_detail_bloc.dart';

@freezed
class SettlementPayModeDetailState with _$SettlementPayModeDetailState {
  const factory SettlementPayModeDetailState.getSettlementPayModeDetailState(
          {required List<SettlemenetApprovalPayModeDetailModel>? paymode}) =
      GetSettlementPayModeDetailState;

  const factory SettlementPayModeDetailState.paymodeDetailFailedState() =
      PaymodeDetailFailedState;

  factory SettlementPayModeDetailState.initial() =>
      const SettlementPayModeDetailState.getSettlementPayModeDetailState(
          paymode: null);
}
