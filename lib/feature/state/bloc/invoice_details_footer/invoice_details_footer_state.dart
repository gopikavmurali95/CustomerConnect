part of 'invoice_details_footer_bloc.dart';

@freezed
class InvoiceDetailsFooterState with _$InvoiceDetailsFooterState {
  const factory InvoiceDetailsFooterState.getTypeWiseInvoice(
          {required List<InvoiceDetailsFooterModel>? invfooter}) =
      GetTypeWiseInvoiceState;

  const factory InvoiceDetailsFooterState.typeWiseInvoiceFailedState() =
      TypeWiseInvoiceFailedState;

  factory InvoiceDetailsFooterState.initial() =>
      const InvoiceDetailsFooterState.getTypeWiseInvoice(invfooter: null);
}
