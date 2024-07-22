import 'package:bloc/bloc.dart';
import 'package:customer_connect/feature/data/models/must_sell_i_json_model/must_sell_i_json_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mustsell_approval_selection_state.dart';
part 'mustsell_approval_selection_cubit.freezed.dart';

class MustsellApprovalSelectionCubit
    extends Cubit<MustsellApprovalSelectionState> {
  MustsellApprovalSelectionCubit()
      : super(MustsellApprovalSelectionState.initial());

  void selectedHeadersList(List<MustSellIJsonModel> selected) {
    emit(MustSellApprovalSelectedHeadersState(selected: selected));
  }
}
