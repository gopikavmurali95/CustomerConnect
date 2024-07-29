part of 'settlement_cash_details_bloc.dart';

@freezed
class SettlementCashDetailsState with _$SettlementCashDetailsState {
  const factory SettlementCashDetailsState.getCashDetailsState(
      {required SettlemetApprovalcashDetailModel? cash}) = GetCashDetailsState;

  const factory SettlementCashDetailsState.cashDetailFailedState() =
      CashDetailFailedState;

  factory SettlementCashDetailsState.initial() =>
      const SettlementCashDetailsState.getCashDetailsState(cash: null);
}
