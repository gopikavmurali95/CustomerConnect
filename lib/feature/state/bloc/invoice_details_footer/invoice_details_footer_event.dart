part of 'invoice_details_footer_bloc.dart';

@freezed
class InvoiceDetailsFooterEvent with _$InvoiceDetailsFooterEvent {
  const factory InvoiceDetailsFooterEvent.getInvoiceDetailsFooterEvent(
      {required String iD}) = GetInvoiceDetailsFooterEvent;

  const factory InvoiceDetailsFooterEvent.invoiceDetailsFooterFailedEvent() =
      InvoiceDetailsFooterFailedEvent;

  const factory InvoiceDetailsFooterEvent.clearInvoiceDetailsFooter() =
      ClearInvoiceDetailsFooter;
}
