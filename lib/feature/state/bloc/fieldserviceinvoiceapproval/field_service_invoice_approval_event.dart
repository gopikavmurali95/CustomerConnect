part of 'field_service_invoice_approval_bloc.dart';

@freezed
class FieldServiceInvoiceApprovalEvent with _$FieldServiceInvoiceApprovalEvent {
  const factory FieldServiceInvoiceApprovalEvent.getFieldServiceInvoiceApproval(
      {required String reqID,
      required String userID}) = GetFieldServiceInvoiceApprovalEvent;
  const factory FieldServiceInvoiceApprovalEvent.invoiceRejectEvent(
      {required String reqID, required String userID}) = InvoiceRejectEvent;

  const factory FieldServiceInvoiceApprovalEvent.fieldServiceLoadingEvent() =
      FieldServiceInvoicLoadingEvent;

  const factory FieldServiceInvoiceApprovalEvent.clearFieldServiceInoiveApproval() =
      ClearFieldServiceInoiveApproval;
}
