part of 'invoice_total_cubit.dart';

@freezed
class InvoiceTotalState with _$InvoiceTotalState {
  const factory InvoiceTotalState.getInvoiceTotal({required String amount}) =
      GetInvoiceTotal;

  factory InvoiceTotalState.initial() =>
      const InvoiceTotalState.getInvoiceTotal(amount: '0.00');
}
