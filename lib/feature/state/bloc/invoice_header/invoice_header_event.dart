part of 'invoice_header_bloc.dart';

@freezed
class InvoiceHeaderEvent with _$InvoiceHeaderEvent {
  const factory InvoiceHeaderEvent.invoiceHeaderSuccessEvent(
      {required InvoiceHeaderInparas invheaderin,
      required String searchQuery}) = InvoiceHeaderSuccessEvent;

  const factory InvoiceHeaderEvent.invoiceHeaderFailedEvent() =
      InvoiceHeaderFailedEvent;

  const factory InvoiceHeaderEvent.clearInvoiceHeader() = ClearInvoiceHeader;
}
