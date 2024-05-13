import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/field_service_invoice_approval_model/field_service_invoice_approval_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'field_service_invoice_approval_event.dart';
part 'field_service_invoice_approval_state.dart';
part 'field_service_invoice_approval_bloc.freezed.dart';

class FieldServiceInvoiceApprovalBloc extends Bloc<
    FieldServiceInvoiceApprovalEvent, FieldServiceInvoiceApprovalState> {
  final IFieldServiceInvoiceApprovalRepo invAprovalRepo;
  FieldServiceInvoiceApprovalBloc(this.invAprovalRepo)
      : super(FieldServiceInvoiceApprovalState.initial()) {
    on<GetFieldServiceInvoiceApprovalEvent>((event, emit) async {
      Either<MainFailures, FieldServiceInvoiceApprovalModel> approve =
          await invAprovalRepo.invoiceApprovalRepo(event.reqID, event.userID);
      emit(approve.fold((l) => const FieldServiceInvoiceApprovalFailed(),
          (r) => GetFieldServiceInvoiceApprovalState(approval: r)));
    });
  }
}
