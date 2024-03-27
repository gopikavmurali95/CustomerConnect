part of 'invoice_details_bloc.dart';

@freezed
class InvoiceDetailsState with _$InvoiceDetailsState {
  const factory InvoiceDetailsState.getInvoiceDetailsState(
          {required List<InvoiceDetailsModel>? invdetails}) =
      GetInvoiceDetailsState;

  const factory InvoiceDetailsState.getInvoiceDetailsFailedState() =
      GetInvoiceDetailsFailedState;

  factory InvoiceDetailsState.initial() =>
      const InvoiceDetailsState.getInvoiceDetailsState(invdetails: null);
}
