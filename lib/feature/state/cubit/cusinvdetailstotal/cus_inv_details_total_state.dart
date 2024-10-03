part of 'cus_inv_details_total_cubit.dart';

@freezed
class CusInvDetailsTotalState with _$CusInvDetailsTotalState {
  const factory CusInvDetailsTotalState.cusInvoiceDetailsTotalState(
      {required String amount}) = CusInvoiceDetailsTotalState;

  factory CusInvDetailsTotalState.initial() =>
      const CusInvDetailsTotalState.cusInvoiceDetailsTotalState(amount: '0.00');
}
