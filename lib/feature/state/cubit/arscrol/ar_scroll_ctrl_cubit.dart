import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ar_scroll_ctrl_state.dart';
part 'ar_scroll_ctrl_cubit.freezed.dart';

class ArScrollCtrlCubit extends Cubit<ArScrollCtrlState> {
  ArScrollCtrlCubit() : super(ArScrollCtrlState.initial());

  void onscrollchnage(ScrollController controller) {
    if (controller.position.pixels >= 3) {
      emit(const ScrollPositionState(isOnTop: false));
    } else if (controller.position.pixels ==
        controller.position.maxScrollExtent) {
      emit(const ScrollPositionState(isOnTop: true));
    } else {
      emit(const ScrollPositionState(isOnTop: true));
    }
  }

  void onInit() {
    emit(const ScrollPositionState(isOnTop: true));
  }
}
