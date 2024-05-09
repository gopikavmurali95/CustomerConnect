part of 'pass_visibilty_cubit.dart';

@freezed
class PassVisibiltyState with _$PassVisibiltyState {
  const factory PassVisibiltyState.passwordVisibiltyStatusState(
      {required bool isVisible}) = PasswordVisibiltyStatusState;

  factory PassVisibiltyState.initial() =>
      const PassVisibiltyState.passwordVisibiltyStatusState(isVisible: false);
}
