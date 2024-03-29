import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/invoice_details_model/invoice_details_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'invoice_details_event.dart';
part 'invoice_details_state.dart';
part 'invoice_details_bloc.freezed.dart';

@injectable
class InvoiceDetailsBloc
    extends Bloc<InvoiceDetailsEvent, InvoiceDetailsState> {
  final IInvoiceRepo invrepo;
  InvoiceDetailsBloc(this.invrepo) : super(InvoiceDetailsState.initial()) {
    on<GetInvoiceDetailsEvent>((event, emit) async {
      Either<MainFailures, List<InvoiceDetailsModel>> invoicedetails =
          await invrepo.getInvoiceDetail(event.id);
      emit(invoicedetails.fold((l) => const GetInvoiceDetailsFailedState(),
          (r) => GetInvoiceDetailsState(invdetails: r)));
    });
    on((event, emit) => emit(const GetInvoiceDetailsState(invdetails: null)));
  }
}
