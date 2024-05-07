part of 'field_service_invoice_approval_bloc.dart';

@freezed
class FieldServiceInvoiceApprovalState with _$FieldServiceInvoiceApprovalState {
  const factory FieldServiceInvoiceApprovalState.getFieldServiceInvoiceApproval(
          {required FieldServiceInvoiceApprovalModel? approval}) =
      GetFieldServiceInvoiceApprovalState;

  const factory FieldServiceInvoiceApprovalState.fieldServiceInvoiceApprovalFailed() =
      FieldServiceInvoiceApprovalFailed;

  const factory FieldServiceInvoiceApprovalState.fieldServiceInvoiceLoadingState() =
      _FieldServiceInvoiceLoadingState;

  factory FieldServiceInvoiceApprovalState.initial() =>
      const FieldServiceInvoiceApprovalState.getFieldServiceInvoiceApproval(
          approval: null);
}
