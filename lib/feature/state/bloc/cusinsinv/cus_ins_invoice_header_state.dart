part of 'cus_ins_invoice_header_bloc.dart';

@freezed
class CusInsInvoiceHeaderState with _$CusInsInvoiceHeaderState {
  const factory CusInsInvoiceHeaderState.getCusInvoiceHeaderState(
      {required List<CusInsInvoiceModel>? headers}) = GetCusInvoiceHeaderState;
  const factory CusInsInvoiceHeaderState.getcusInvFailedState() =
      GetcusInvFailedState;

  factory CusInsInvoiceHeaderState.initial() =>
      const CusInsInvoiceHeaderState.getCusInvoiceHeaderState(headers: null);
}
