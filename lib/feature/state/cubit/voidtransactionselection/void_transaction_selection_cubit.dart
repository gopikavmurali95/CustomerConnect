import 'package:bloc/bloc.dart';
import 'package:customer_connect/feature/data/models/void_transaction_json_model/void_transaction_json_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'void_transaction_selection_state.dart';
part 'void_transaction_selection_cubit.freezed.dart';

class VoidTransactionSelectionCubit
    extends Cubit<VoidTransactionSelectionState> {
  VoidTransactionSelectionCubit()
      : super(VoidTransactionSelectionState.initial());
  void selectedHeadersList(List<VoidTransactionJsonModel> selected) {
    emit(VoidTransactionSelectedState(selected: selected));
  }
}
