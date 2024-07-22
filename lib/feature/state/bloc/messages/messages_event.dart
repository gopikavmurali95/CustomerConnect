part of 'messages_bloc.dart';

@freezed
class MessagesEvent with _$MessagesEvent {
  const factory MessagesEvent.sendmessageevent(
      {required MessageModel message,
      required String fromusername,
      required String toUserName,
      required String uniqueid}) = _sendmessageevent;
  const factory MessagesEvent.getMessageEvent(
      {required String mail, required String uniqueid}) = _getMessageEvent;
}
