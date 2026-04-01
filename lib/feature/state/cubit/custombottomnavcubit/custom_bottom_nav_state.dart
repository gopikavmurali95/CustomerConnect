part of 'custom_bottom_nav_cubit.dart';

@freezed
class CustomBottomNavState with _$CustomBottomNavState {
  const factory CustomBottomNavState.custombottomnavState({
    required int selectedbottomIndex,
  }) = CustombottomnavState;

  factory CustomBottomNavState.initial() =>
      const CustomBottomNavState.custombottomnavState(selectedbottomIndex: 0);
}
