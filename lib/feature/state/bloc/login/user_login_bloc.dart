import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_login_event.dart';
part 'user_login_state.dart';
part 'user_login_bloc.freezed.dart';

@injectable
class UserLoginBloc extends Bloc<UserLoginEvent, UserLoginState> {
  final ILoginRepo loginRepo;
  UserLoginBloc(this.loginRepo) : super(UserLoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      Either<MainFailures, LoginUserModel> user = await loginRepo.userLogin(
          event.username, event.password, event.token);

      emit(
        user.fold(
          (l) => const UserLoginState.userLoginFailedState(),
          (r) => UserLoginSuccessState(user: r),
        ),
      );
    });

    on<_loginLoadingEvent>((event, emit) {
      emit(const LoginLoadingState());
    });
  }
}
