part of 'cus_ins_invoice_header_bloc.dart';

@freezed
class CusInsInvoiceHeaderEvent with _$CusInsInvoiceHeaderEvent {
  const factory CusInsInvoiceHeaderEvent.getCusInvEvent(
      {required CusInsInvoiceHeaderInModel invIn}) = GetCusInvEvent;
  const factory CusInsInvoiceHeaderEvent.clearinvEvent() = ClearinvEvent;
}
