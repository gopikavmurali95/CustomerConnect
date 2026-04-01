import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_bottom_nav_state.dart';
part 'custom_bottom_nav_cubit.freezed.dart';

class CustomBottomNavCubit extends Cubit<CustomBottomNavState> {
  CustomBottomNavCubit() : super(CustomBottomNavState.initial());

  void changeIndex(int index) {
    emit(CustombottomnavState(selectedbottomIndex: index));
  }
}
