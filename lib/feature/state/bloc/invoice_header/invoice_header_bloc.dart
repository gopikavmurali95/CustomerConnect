import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/invoice_header_inparas/invoice_header_inparas.dart';
import 'package:customer_connect/feature/data/models/invoice_header_model/invoice_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'invoice_header_event.dart';
part 'invoice_header_state.dart';
part 'invoice_header_bloc.freezed.dart';

@injectable
class InvoiceHeaderBloc extends Bloc<InvoiceHeaderEvent, InvoiceHeaderState> {
  final IInvoiceRepo invrepo;
  InvoiceHeaderBloc(this.invrepo) : super(InvoiceHeaderState.initial()) {
    on<InvoiceHeaderSuccessEvent>((event, emit) async {
      Either<MainFailures, List<InvoiceHeaderModel>> invoiceheader =
          await invrepo.getInvoiceHeaders(event.invheaderin);

      List<InvoiceHeaderModel> searcheditems = [];

      emit(invoiceheader.fold((l) => const InvoiceHeaderFailedState(), (r) {
        searcheditems = r
            .where((element) =>
                element.invoiceNo!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()) ||
                element.cusCode!
                    .toLowerCase()
                    .toUpperCase()
                    .contains(event.searchQuery.toUpperCase()))
            .toList();
        return InvoiceHeaderSuccessState(
            invheader: event.searchQuery.isEmpty ? r : searcheditems);
      }));
    });
    on((event, emit) => emit(const InvoiceHeaderSuccessState(invheader: null)));
  }
}
