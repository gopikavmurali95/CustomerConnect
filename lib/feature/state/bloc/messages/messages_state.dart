part of 'messages_bloc.dart';

@freezed
class MessagesState with _$MessagesState {
  const factory MessagesState() = _MessagesState;
  const factory MessagesState.messagesendstate() = _messagesendstate;
  const factory MessagesState.getmessagestate(
      {required List<MessageModel> messagelist}) = _getmessagestate;
  const factory MessagesState.errorstate() = _errorstate;

  const factory MessagesState.initial() = _Initial;
}
