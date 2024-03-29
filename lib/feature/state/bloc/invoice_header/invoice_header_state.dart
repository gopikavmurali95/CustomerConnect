part of 'invoice_header_bloc.dart';

@freezed
class InvoiceHeaderState with _$InvoiceHeaderState {
  const factory InvoiceHeaderState.invoiceHeaderSuccessState(
          {required List<InvoiceHeaderModel>? invheader}) =
      InvoiceHeaderSuccessState;

  const factory InvoiceHeaderState.invoiceHeaderFailedState() =
      InvoiceHeaderFailedState;

  factory InvoiceHeaderState.initial() =>
      const InvoiceHeaderState.invoiceHeaderSuccessState(invheader: null);
}
