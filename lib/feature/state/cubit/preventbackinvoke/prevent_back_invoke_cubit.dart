import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'prevent_back_invoke_state.dart';
part 'prevent_back_invoke_cubit.freezed.dart';

class PreventBackInvokeCubit extends Cubit<PreventBackInvokeState> {
  PreventBackInvokeCubit() : super(PreventBackInvokeState.initial());

  void checkBackInvokePossibility(
      String reason, int totalCount, int approvedCount) {
    log('in approve cubit $approvedCount , $totalCount');
    if (approvedCount == totalCount) {
      emit(
        const PreventBackInvokeWithReasonState(reson: '', isApproved: true),
      );
    } else {
      emit(
        PreventBackInvokeWithReasonState(reson: reason, isApproved: false),
      );
    }
  }
}
