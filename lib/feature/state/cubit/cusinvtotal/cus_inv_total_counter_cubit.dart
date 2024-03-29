import 'package:bloc/bloc.dart';
import 'package:customer_connect/feature/data/models/cus_ins_invoice_model/cus_ins_invoice_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cus_inv_total_counter_state.dart';
part 'cus_inv_total_counter_cubit.freezed.dart';

class CusInvTotalCounterCubit extends Cubit<CusInvTotalCounterState> {
  CusInvTotalCounterCubit() : super(CusInvTotalCounterState.initial());

  getTotal(List<CusInsInvoiceModel> invoicelist) {
    double total = 0;
    for (var element in invoicelist) {
      total += double.parse(element.grandTotal ?? '0.00');
    }

    emit(TotalInvoiceAmountState(amount: total.toStringAsFixed(2)));
  }
}
