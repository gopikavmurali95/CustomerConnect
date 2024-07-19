import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/domain/chat/models/message_model/message_model.dart';
import 'package:customer_connect/feature/state/bloc/messages/messages_bloc.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MessageFieldWidget extends StatefulWidget {
  final String tomail;
  final String uniqueid;
  final String username;
  final String toToken;
  final LoginUserModel user;
  const MessageFieldWidget(
      {super.key,
      required this.tomail,
      required this.uniqueid,
      required this.username,
      required this.toToken,
      required this.user});

  @override
  State<MessageFieldWidget> createState() => _MessageFieldWidgetState();
}

final _messagecontroller = TextEditingController();

class _MessageFieldWidgetState extends State<MessageFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<MessagesBloc, MessagesState>(
      listener: (context, state) {
        state.when(
          () => null,
          messagesendstate: () {},
          getmessagestate: (messagelist) {},
          errorstate: () {
            const Center(
              child: Text('something went wrong'),
            );
          },
          initial: () {},
        );
      },
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200],
              ),
              child: TextFormField(
                controller: _messagecontroller,
                decoration: const InputDecoration(
                  hintText: 'Enter message',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              // Handle icon button tap
            },
            icon: const Icon(
              Icons.abc,
              // color: c,
            ),
          ),
          IconButton(
            onPressed: () {
              log('Kittna token ${widget.toToken}');
              if (_messagecontroller.text.isNotEmpty) {
                context.read<MessagesBloc>().add(
                      MessagesEvent.sendmessageevent(
                          fromusername: widget.user.userName ?? '',
                          toUserName: widget.username,
                          message: MessageModel(
                              date: '${DateTime.now()}',
                              isSender: true,
                              message: _messagecontroller.text,
                              time:
                                  '${DateTime.now().hour}:${DateTime.now().minute}',
                              toEmail: widget.tomail,
                              uid: widget.user.usrId,
                              chatid: widget.uniqueid,
                              fromuser: widget.user.usrId,
                              touser: widget.username,
                              datetime:
                                  '${DateTime.now().microsecondsSinceEpoch}'),
                          uniqueid: widget.uniqueid),
                    );
                log(jsonEncode(
                  MessageModel(
                      date: '${DateTime.now()}',
                      isSender: true,
                      message: _messagecontroller.text,
                      time: '${DateTime.now().hour}:${DateTime.now().minute}',
                      toEmail: widget.tomail,
                      uid: widget.tomail,
                      chatid: widget.uniqueid,
                      fromuser: widget.user.usrId,
                      touser: widget.username,
                      datetime: '${DateTime.now().microsecondsSinceEpoch}'),
                ));
                /*   sendNotiication(
                    widget.toToken,
                    widget.username,
                    _messagecontroller.text,
                    widget.tomail,
                    widget.uniqueid,
                    FirebaseAuth.instance.currentUser?.email ?? ''); */
                _messagecontroller.clear();
              }
            },
            icon: Icon(
              Icons.send,
              color: Colors.green.shade200,
            ),
          ),
        ],
      ),
    );
  }
}
