import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_app_bar_state.dart';
part 'home_app_bar_cubit.freezed.dart';

class HomeAppBarCubit extends Cubit<HomeAppBarState> {
  HomeAppBarCubit() : super(HomeAppBarState.initial());

  void isScrolled(bool isScolled) {
    emit(IsScreenScrolledState(isScrolled: isScolled));
  }
}
