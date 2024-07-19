import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/users_model/users_model.dart';
import 'package:customer_connect/feature/domain/chat/allchateduserrepo.dart';
import 'package:customer_connect/feature/domain/chat/messagesrepo.dart';
import 'package:customer_connect/feature/view/messages/chatscreen.dart';
import 'package:customer_connect/feature/view/messages/chatuserslistingscreen.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatHomeScreen extends StatefulWidget {
  final LoginUserModel user;

  const ChatHomeScreen({super.key, required this.user});

  @override
  State<ChatHomeScreen> createState() => _ChatHomeScreenState();
}

class _ChatHomeScreenState extends State<ChatHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        titleSpacing: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
          ),
        ),
        title: Text(
          "Chats",
          style: appHeading(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<List<UsersModel>>(
              stream: GetAllChatRepo().getUsersStream(widget.user.usrId ?? ''),
              builder: (context, snapshot) {
                return snapshot.data == null || snapshot.data!.isEmpty
                    ? SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: const Center(
                          child: Text('You Have no interactions'),
                        ),
                      )
                    : ListView.separated(
                        padding: const EdgeInsets.all(0),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return snapshot.connectionState ==
                                  ConnectionState.active
                              ? ListTile(
                                  onTap: () {
                                    final username =
                                        snapshot.data![index].name == null ||
                                                snapshot.data![index].toname ==
                                                    null
                                            ? 'user'
                                            : snapshot.data![index].frommail ==
                                                    widget.user.usrId
                                                ? snapshot.data![index].toname!
                                                : snapshot.data![index].name!;

                                    final email =
                                        snapshot.data![index].frommail ==
                                                widget.user.usrId
                                            ? snapshot.data![index].tomail!
                                            : snapshot.data![index].frommail;

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ChatScreen(
                                          user: widget.user,
                                          fcmToken:
                                              snapshot.data![index].fcmToken,
                                          tomail: email!,
                                          username: username,
                                          imageurl: snapshot
                                              .data![index].profileimage,
                                          uniqueid:
                                              snapshot.data![index].chatid ??
                                                  generateUniqueId(
                                                      widget.user.usrId ?? '',
                                                      snapshot.data![index]
                                                          .tomail!),
                                        ),
                                      ),
                                    );
                                  },
                                  leading: CircleAvatar(
                                    radius: 30,
                                    child: SizedBox.fromSize(
                                      size: MediaQuery.of(context).size,
                                    ),
                                  ),
                                  title: Text(snapshot.data![index].name ==
                                              null ||
                                          snapshot.data![index].toname == null
                                      ? 'user'
                                      : snapshot.data![index].frommail ==
                                              widget.user.usrId
                                          ? snapshot.data![index].toname!
                                          : snapshot.data![index].name!),
                                  subtitle: snapshot.connectionState ==
                                          ConnectionState.waiting
                                      ? const Text('data')
                                      : StreamBuilder(
                                          stream: MessagesRepo()
                                              .getMessageStream(
                                                  snapshot.data![index].tomail!,
                                                  snapshot.data![index].chatid),
                                          builder: (context, lastmessage) {
                                            return lastmessage.data == null
                                                ? const ShimmerContainers(
                                                    height: 8, width: 40)
                                                : Text(lastmessage
                                                    .data!.reversed
                                                    .toList()[0]
                                                    .message!);
                                          }),
                                )
                              : Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Row(
                                    children: [
                                      const ShimmerContainers(
                                        height: 60,
                                        width: 60,
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ShimmerContainers(
                                              height: 20,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width -
                                                  100),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          ShimmerContainers(
                                              height: 20,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width -
                                                  150)
                                        ],
                                      ))
                                    ],
                                  ),
                                );
                        },
                        separatorBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Divider(),
                          );
                        },
                        itemCount:
                            snapshot.data == null ? 10 : snapshot.data!.length);
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: const Color(0xffC6E1E5),
          icon: const Icon(
            CupertinoIcons.person,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ChatUsersListingScreen(
                          user: widget.user,
                        )));
          },
          label: Text(
            'New Chat',
            style: kfontstyle(color: Colors.white),
          )),
    );
  }
}
