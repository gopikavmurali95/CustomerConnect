part of 'navigateto_back_cubit.dart';

@freezed
class NavigatetoBackState with _$NavigatetoBackState {
  const factory NavigatetoBackState.navigateToBackScreen(
      {required bool canPop}) = NavigateToBackScreen;

  factory NavigatetoBackState.initial() =>
      const NavigatetoBackState.navigateToBackScreen(canPop: false);
}
