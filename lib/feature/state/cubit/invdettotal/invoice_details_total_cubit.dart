import 'package:bloc/bloc.dart';
import 'package:customer_connect/feature/data/models/invoice_details_footer_model/invoice_details_footer_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_details_total_state.dart';
part 'invoice_details_total_cubit.freezed.dart';

class InvoiceDetailsTotalCubit extends Cubit<InvoiceDetailsTotalState> {
  InvoiceDetailsTotalCubit() : super(InvoiceDetailsTotalState.initial());
  getInvTotal(List<InvoiceDetailsFooterModel> invoiceList) {
    double total = 0;
    for (var element in invoiceList) {
      total = double.parse(element.subTotal ?? '0.00') +
          double.parse(element.vat ?? '0.00');
    }
    emit(GetInvoiceDetailsTotal(amount: total.toStringAsFixed(2)));
  }
}
