part of 'invoice_details_bloc.dart';

@freezed
class InvoiceDetailsEvent with _$InvoiceDetailsEvent {
  const factory InvoiceDetailsEvent.getInvoiceDetailsEvent(
      {required String id,
      required String searchQuery}) = GetInvoiceDetailsEvent;

  const factory InvoiceDetailsEvent.getInvoiceDetailsFailedEvent() =
      GetInvoiceDetailsFailedEvent;

  const factory InvoiceDetailsEvent.clearInvoiceDetails() = ClearInvoiceDetails;
}
