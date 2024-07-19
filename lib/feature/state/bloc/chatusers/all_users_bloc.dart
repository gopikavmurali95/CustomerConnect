import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/domain/chat/models/chat_user_model/chat_user_model.dart';
import 'package:customer_connect/feature/domain/chat/msgabstractrepos.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'all_users_event.dart';
part 'all_users_state.dart';
part 'all_users_bloc.freezed.dart';

@injectable
class AllUsersBloc extends Bloc<AllUsersEvent, AllUsersState> {
  final IChatUserRepo chatUserRepo;
  AllUsersBloc(this.chatUserRepo) : super(AllUsersState.initial()) {
    on<AllUsersEvent>((event, emit) async {
      Either<MainFailures, List<ChatUserModel>> users =
          await chatUserRepo.getAllusers();

      emit(users.fold((l) => const GetusersFailedState(),
          (r) => GetAllUsersState(users: r)));
    });

    on<ClearAllusersEvent>((event, emit) {
      emit(const GetAllUsersState(users: null));
    });
  }
}
