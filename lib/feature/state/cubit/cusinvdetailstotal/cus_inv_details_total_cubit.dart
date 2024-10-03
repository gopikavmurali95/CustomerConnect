import 'package:bloc/bloc.dart';
import 'package:customer_connect/feature/data/models/cus_ins_inv_type_model/cus_ins_inv_type_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cus_inv_details_total_state.dart';
part 'cus_inv_details_total_cubit.freezed.dart';

class CusInvDetailsTotalCubit extends Cubit<CusInvDetailsTotalState> {
  CusInvDetailsTotalCubit() : super(CusInvDetailsTotalState.initial());

  getTotal(List<CusInsInvTypeModel> invoicelist) {
    double total = 0;
    for (var element in invoicelist) {
      total += double.parse((element.vat ?? '0.00').replaceAll(',', '')) +
          double.parse((element.subTotal ?? '0.00').replaceAll(',', ''));
    }

    emit(CusInvoiceDetailsTotalState(amount: total.toStringAsFixed(2)));
  }
}
