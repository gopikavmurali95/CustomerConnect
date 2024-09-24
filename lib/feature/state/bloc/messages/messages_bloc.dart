import 'package:bloc/bloc.dart';

import 'package:customer_connect/feature/domain/chat/models/message_model/message_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'messages_event.dart';
part 'messages_state.dart';
part 'messages_bloc.freezed.dart';

@injectable
class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  // final IMessageRepo messageRepo;
  MessagesBloc() : super(const MessagesState.initial()) {
    /*   on<_sendmessageevent>((event, emit) async {
      Either<MainFailures, String> sendmessage = await messageRepo.sendmessage(
          event.message, event.uniqueid, event.fromusername, event.toUserName);

      emit(
        sendmessage.fold(
          (l) => const _errorstate(),
          (r) => const _messagesendstate(),
        ),
      );
    });
    on<_getMessageEvent>((event, emit) async {
      Either<MainFailures, List<MessageModel>> getmessages =
          await messageRepo.getallmessages(event.mail, event.uniqueid);
      emit(
        getmessages.fold(
          (l) => const _errorstate(),
          (r) => _getmessagestate(messagelist: r),
        ),
      );
    }); */
  }
}
