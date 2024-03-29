import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/invoice_details_footer_model/invoice_details_footer_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'invoice_details_footer_event.dart';
part 'invoice_details_footer_state.dart';
part 'invoice_details_footer_bloc.freezed.dart';

@injectable
class InvoiceDetailsFooterBloc
    extends Bloc<InvoiceDetailsFooterEvent, InvoiceDetailsFooterState> {
  final IInvoiceRepo invrepo;
  InvoiceDetailsFooterBloc(this.invrepo)
      : super(InvoiceDetailsFooterState.initial()) {
    on<GetInvoiceDetailsFooterEvent>((event, emit) async {
      Either<MainFailures, List<InvoiceDetailsFooterModel>> invfooter =
          await invrepo.getInvoiceDetailFooter(event.iD);
      emit(invfooter.fold((l) => const TypeWiseInvoiceFailedState(),
          (r) => GetTypeWiseInvoiceState(invfooter: r)));
    });
    on((event, emit) => emit(const GetTypeWiseInvoiceState(invfooter: null)));
  }
}
