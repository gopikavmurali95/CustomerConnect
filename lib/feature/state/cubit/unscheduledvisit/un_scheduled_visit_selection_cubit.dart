import 'package:bloc/bloc.dart';
import 'package:customer_connect/feature/data/models/un_scheduled_visit_approve_in_model/un_scheduled_visit_approve_in_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'un_scheduled_visit_selection_state.dart';
part 'un_scheduled_visit_selection_cubit.freezed.dart';

class UnScheduledVisitSelectionCubit
    extends Cubit<UnScheduledVisitSelectionState> {
  UnScheduledVisitSelectionCubit()
      : super(UnScheduledVisitSelectionState.initial());

  void selectedHeadersList(List<UnScheduledVisitApproveInModel> selected) {
    emit(UnSchedledSelectedItemsState(selected: selected));
  }
}
