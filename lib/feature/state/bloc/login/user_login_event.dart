part of 'user_login_bloc.dart';

@freezed
class UserLoginEvent with _$UserLoginEvent {
  const factory UserLoginEvent.loginEvent(
      {required String username,
      required String password,
      required String token}) = LoginEvent;
  const factory UserLoginEvent.loginLoadingEvent() = _loginLoadingEvent;
}
