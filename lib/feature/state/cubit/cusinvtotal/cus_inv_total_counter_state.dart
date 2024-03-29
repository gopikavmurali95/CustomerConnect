part of 'cus_inv_total_counter_cubit.dart';

@freezed
class CusInvTotalCounterState with _$CusInvTotalCounterState {
  const factory CusInvTotalCounterState.totalInvoiceAmountState(
      {required String amount}) = TotalInvoiceAmountState;

  factory CusInvTotalCounterState.initial() =>
      const CusInvTotalCounterState.totalInvoiceAmountState(amount: '0.00');
}
