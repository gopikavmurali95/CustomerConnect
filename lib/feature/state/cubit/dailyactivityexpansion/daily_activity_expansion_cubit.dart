import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_activity_expansion_state.dart';
part 'daily_activity_expansion_cubit.freezed.dart';

class DailyActivityExpansionCubit extends Cubit<DailyActivityExpansionState> {
  DailyActivityExpansionCubit() : super(DailyActivityExpansionState.initial());

  void expandTile(int length, int idx, bool isAlreadyExpanded) {
    List<bool> expandedlist = List.generate(length, (index) => false);

    if (idx >= 0) {
      if (isAlreadyExpanded) {
        expandedlist[idx] = false;
      } else {
        expandedlist[idx] = true;
      }
    }
    log(jsonEncode(expandedlist));
    emit(ExpandedContainersState(expandedList: expandedlist));
  }
}
