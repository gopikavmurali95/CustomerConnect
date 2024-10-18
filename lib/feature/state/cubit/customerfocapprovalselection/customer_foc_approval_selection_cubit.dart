import 'package:bloc/bloc.dart';
import 'package:customer_connect/feature/data/models/customer_foc_approval_json_model/customer_foc_approval_json_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'customer_foc_approval_selection_state.dart';
part 'customer_foc_approval_selection_cubit.freezed.dart';

class CustomerFocApprovalSelectionCubit extends Cubit<CustomerFocApprovalSelectionState> {
  CustomerFocApprovalSelectionCubit() : super(CustomerFocApprovalSelectionState.initial());

  void selectedHeadersList(List<CustomerFocApprovalJsonModel> selected) {
    emit(FocApprovalSelectionState(selection: selected));
  }
}
