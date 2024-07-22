part of 'all_users_bloc.dart';

@freezed
class AllUsersState with _$AllUsersState {
  const factory AllUsersState.getAllUsersState(
      {required List<ChatUserModel>? users}) = GetAllUsersState;

  const factory AllUsersState.getusersFailedState() = GetusersFailedState;

  factory AllUsersState.initial() =>
      const AllUsersState.getAllUsersState(users: null);
}
