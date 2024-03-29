import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_ins_invoice_header_in_model/cus_ins_invoice_header_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_invoice_model/cus_ins_invoice_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cus_ins_invoice_header_event.dart';
part 'cus_ins_invoice_header_state.dart';
part 'cus_ins_invoice_header_bloc.freezed.dart';

@injectable
class CusInsInvoiceHeaderBloc
    extends Bloc<CusInsInvoiceHeaderEvent, CusInsInvoiceHeaderState> {
  final ICusInsInvoiceRepo invoiceRepo;
  CusInsInvoiceHeaderBloc(this.invoiceRepo)
      : super(CusInsInvoiceHeaderState.initial()) {
    on<GetCusInvEvent>((event, emit) async {
      Either<MainFailures, List<CusInsInvoiceModel>> invs =
          await invoiceRepo.getInvoiceHeaders(event.invIn);

      emit(invs.fold((l) => const GetcusInvFailedState(),
          (r) => GetCusInvoiceHeaderState(headers: r)));
    });

    on<ClearinvEvent>((event, emit) {
      emit(const GetCusInvoiceHeaderState(headers: null));
    });
  }
}
