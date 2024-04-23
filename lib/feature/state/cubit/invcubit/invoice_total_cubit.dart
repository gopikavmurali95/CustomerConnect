import 'package:bloc/bloc.dart';
import 'package:customer_connect/feature/data/models/invoice_header_model/invoice_header_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_total_state.dart';
part 'invoice_total_cubit.freezed.dart';

class InvoiceTotalCubit extends Cubit<InvoiceTotalState> {
  InvoiceTotalCubit() : super(InvoiceTotalState.initial());

  getInvTotal(List<InvoiceHeaderModel> invoiceList) {
    double total = 0;
    for (var element in invoiceList) {
      total += double.parse(element.grandTotal ?? '0.00');
    }
    emit(GetInvoiceTotal(amount: total.toStringAsFixed(2)));
  }
}
