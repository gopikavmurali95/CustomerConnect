/* import 'dart:async';
import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/domain/chat/messagesrepo.dart';
import 'package:customer_connect/feature/domain/chat/models/message_model/message_model.dart';
import 'package:customer_connect/feature/state/bloc/chatusers/all_users_bloc.dart';
import 'package:customer_connect/feature/view/messages/messagefieldwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class ChatScreen extends StatefulWidget {
  final String tomail;
  final String username;
  final String? imageurl;
  final String? uniqueid;
  final String? fcmToken;
  final LoginUserModel user;

  const ChatScreen(
      {super.key,
      required this.tomail,
      required this.username,
      this.imageurl,
      this.uniqueid,
      this.fcmToken,
      required this.user});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

final StreamController<List<MessageModel>> _chatStreamController =
    StreamController<List<MessageModel>>();

Stream<List<MessageModel>> get chatStream => _chatStreamController.stream;

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    log('Kittna token ${widget.fcmToken}');

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              CupertinoIcons.back,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        title: ListTile(
          contentPadding: const EdgeInsets.all(0),
          leading: CircleAvatar(
            radius: 15,
            child: SizedBox.fromSize(
              size: size,
            ),
          ),
          title: Text(
            widget.username,
            style: kfontstyle(color: Colors.black),
          ),
          /* subtitle: StreamBuilder(
              stream: userstatusrepo.getuserstatus(widget.tomail),
              builder: (context, status) {
                return Text(
                  status.data ?? 'offline',
                  style: kfontstyle(color: kcolorwhite),
                );
              }), */
        ),
      ),
      body: PopScope(
        onPopInvoked: (didPop) {
          context.read<AllUsersBloc>().add(const ClearAllusersEvent());
          context.read<AllUsersBloc>().add(const GetAllUsersEvent());
        },
        child: Column(children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: StreamBuilder(
                stream: MessagesRepo()
                    .getMessageStream(widget.tomail, widget.uniqueid),
                builder: (context, snapshot) {
                  log(widget.uniqueid ?? 'onnullaaa');
                  return snapshot.connectionState == ConnectionState.active
                      ? GroupedListView<MessageModel, DateTime>(
                          reverse: true,
                          order: GroupedListOrder.DESC,
                          elements: snapshot.data ?? [],
                          groupBy: (element) => DateTime.now(),
                          itemBuilder: (context, element) {
                            return Align(
                              alignment: element.uid == widget.user.usrId
                                  ? Alignment.centerRight
                                  : Alignment.centerLeft,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: element.uid == widget.user.usrId
                                        ? primarycolor
                                        : secondarycolor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        element.message!,
                                        style: kfontstyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Text(
                                        DateFormat('h:mm a').format(
                                            DateFormat('HH:mm')
                                                .parse(element.time ?? '')),
                                        style: kfontstyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          groupSeparatorBuilder: (value) => SizedBox(
                            height: size.height * 0.01,
                          ),
                        )
                      : const Center();
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: MessageFieldWidget(
              user: widget.user,
              tomail: widget.tomail,
              uniqueid: widget.uniqueid!,
              username: widget.username,
              toToken: widget.fcmToken ?? '',
            ),
          )
        ]),
      ),
    );
  }

  errorstate() {}
}

final primarycolor = Color(int.parse('2CB9B0', radix: 16) + 0xFF000000);
final secondarycolor = Color(int.parse('7B9A98', radix: 16) + 0xFF000000);
 */