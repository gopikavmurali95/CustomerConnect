import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/domain/chat/messagesrepo.dart';
import 'package:customer_connect/feature/state/bloc/chatusers/all_users_bloc.dart';
import 'package:customer_connect/feature/view/messages/chatscreen.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatUsersListingScreen extends StatefulWidget {
  final LoginUserModel user;

  const ChatUsersListingScreen({super.key, required this.user});

  @override
  State<ChatUsersListingScreen> createState() => _ChatUsersListingScreenState();
}

class _ChatUsersListingScreenState extends State<ChatUsersListingScreen> {
  @override
  void initState() {
    context.read<AllUsersBloc>().add(const ClearAllusersEvent());
    context.read<AllUsersBloc>().add(const GetAllUsersEvent());
    super.initState();
  }

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
          "All Users",
          style: appHeading(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<AllUsersBloc, AllUsersState>(
              builder: (context, state) {
                return state.when(
                  getAllUsersState: (alluserslist) => ListView.builder(
                    itemBuilder: (context, index) {
                      return alluserslist == null
                          ? Padding(
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
                            )
                          : alluserslist.isEmpty
                              ? const Center(
                                  child: Text('No-contacts added'),
                                )
                              : Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 0),
                                  child: ListTile(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => ChatScreen(
                                                user: widget.user,
                                                fcmToken: '',
                                                tomail:
                                                    alluserslist[index].id ??
                                                        '',
                                                username:
                                                    alluserslist[index].name!,
                                                imageurl: '',
                                                uniqueid: generateUniqueId(
                                                    alluserslist[index].id ??
                                                        '',
                                                    DateTime.now().toString())),
                                          ));
                                    },
                                    leading: CircleAvatar(
                                      radius: 15,
                                      child: SizedBox.fromSize(
                                        size: MediaQuery.of(context).size,
                                      ),
                                    ),
                                    title: Text(alluserslist[index].name!),
                                  ),
                                );
                    },
                    itemCount: alluserslist == null ? 10 : alluserslist.length,
                  ),
                  getusersFailedState: () => Center(
                    child: Text(
                      'No users Available',
                      style: kfontstyle(),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
