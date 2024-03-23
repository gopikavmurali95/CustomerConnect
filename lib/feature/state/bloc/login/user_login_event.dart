part of 'user_login_bloc.dart';

@freezed
class UserLoginEvent with _$UserLoginEvent {
  const factory UserLoginEvent.loginEvent(
      {required String username, required String password}) = LoginEvent;
  const factory UserLoginEvent.loginLoadingEvent() = _loginLoadingEvent;
}
