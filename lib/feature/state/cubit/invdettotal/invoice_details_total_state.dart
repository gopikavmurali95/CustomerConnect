part of 'invoice_details_total_cubit.dart';

@freezed
class InvoiceDetailsTotalState with _$InvoiceDetailsTotalState {
  const factory InvoiceDetailsTotalState.getInvoiceDetailsTotal(
      {required String amount}) = GetInvoiceDetailsTotal;

  factory InvoiceDetailsTotalState.initial() =>
      const InvoiceDetailsTotalState.getInvoiceDetailsTotal(amount: '0.00');
}
