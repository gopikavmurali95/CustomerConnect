part of 'home_app_bar_cubit.dart';

@freezed
class HomeAppBarState with _$HomeAppBarState {
  const factory HomeAppBarState.isScreenScrolledState(
      {required bool isScrolled}) = IsScreenScrolledState;

  factory HomeAppBarState.initial() =>
      const HomeAppBarState.isScreenScrolledState(isScrolled: false);
}
