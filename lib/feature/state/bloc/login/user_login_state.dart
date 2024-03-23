part of 'user_login_bloc.dart';

@freezed
class UserLoginState with _$UserLoginState {
  const factory UserLoginState.userLoginSuccessState(
      {required LoginUserModel? user}) = UserLoginSuccessState;

  const factory UserLoginState.userLoginFailedState() = _userLoginFailedState;

  const factory UserLoginState.loginLoadingState() = LoginLoadingState;

  factory UserLoginState.initial() =>
      const UserLoginState.userLoginSuccessState(user: null);
}
