import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigateto_back_state.dart';
part 'navigateto_back_cubit.freezed.dart';

class NavigatetoBackCubit extends Cubit<NavigatetoBackState> {
  NavigatetoBackCubit() : super(NavigatetoBackState.initial());

  void popFromScreen(bool canPop) {
    emit(NavigateToBackScreen(canPop: canPop));
  }

  void cancelPop(bool canPop) {
    emit(NavigateToBackScreen(canPop: canPop));
  }
}
