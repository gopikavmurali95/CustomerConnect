import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/notification_replay_in_model/notification_replay_in_model.dart';
import 'package:customer_connect/feature/state/bloc/notificationlisting/notification_listing_bloc.dart';
import 'package:customer_connect/feature/state/bloc/notificationreplay/notification_replay_bloc_bloc.dart';
import 'package:customer_connect/feature/state/bloc/notireadflagupdate/noti_read_flag_update_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationScreen extends StatefulWidget {
  final LoginUserModel user;
  const NotificationScreen({super.key, required this.user});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

List<TextEditingController> replayctrls = [];

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  void initState() {
    context.read<NotificationListingBloc>().add(const ClearNotifcationsEvent());
    context
        .read<NotificationListingBloc>()
        .add(GetUserNotificationsEvent(userID: widget.user.usrId ?? ''));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        titleSpacing: 0.5,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          "Notifications ",
          style: appHeading(),
        ),
      ),
      body:
          BlocListener<NotificationReplayBlocBloc, NotificationReplayBlocState>(
        listener: (context, state) {},
        child: MultiBlocListener(
          listeners: [
            BlocListener<NotificationListingBloc, NotificationListingState>(
              listener: (context, state) {
                state.when(
                  getUserNotificationsState: (notifications) {
                    if (notifications != null) {
                      replayctrls = List.generate(notifications.length,
                          (index) => TextEditingController());
                    }
                  },
                  getNotificationFailedState: () {},
                );
              },
            ),
            BlocListener<NotiReadFlagUpdateBloc, NotiReadFlagUpdateState>(
              listener: (context, state) {
                state.when(
                  updateNotiReadFlagUpdateState: (update) {},
                  notiReadUpdateFailedState: () {},
                );
              },
            ),
            BlocListener<NotificationReplayBlocBloc,
                NotificationReplayBlocState>(
              listener: (context, state) {
                state.when(
                  sendNotiReplayState: (replay) {
                    if (replay != null) {
                      context.read<NotificationListingBloc>().add(
                            GetUserNotificationsEvent(
                                userID: widget.user.usrId ?? ''),
                          );
                    }
                  },
                  notiReplayFailedState: () {},
                );
              },
            ),
          ],
          child: BlocBuilder<NotificationListingBloc, NotificationListingState>(
            builder: (context, state) {
              return state.when(
                getUserNotificationsState: (notifications) => notifications ==
                            null ||
                        replayctrls.length != notifications.length
                    ? Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: ListView.separated(
                            itemBuilder: (context, index) => ShimmerContainers(
                                height: 60.h, width: double.infinity),
                            separatorBuilder: (context, index) =>
                                const SizedBox(),
                            itemCount: 10),
                      )
                    : Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Container(
                            width: double.infinity,

                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  blurRadius: 1,
                                  offset: const Offset(0, 0),
                                  blurStyle: BlurStyle.normal,
                                  spreadRadius: 0.4,
                                ),
                              ],
                            ),
                            // child: const ExpansionTile(
                            //   title: Text('18 Mar 24   12.02'),
                            //   subtitle: Text('Check the daily load'),
                            //   children: [Text('abc')],
                            // ),
                            child: Theme(
                              data: ThemeData()
                                  .copyWith(dividerColor: Colors.transparent),
                              child: ExpansionTile(
                                onExpansionChanged: (value) {
                                  context.read<NotiReadFlagUpdateBloc>().add(
                                        UpdateNotiReadFLagEvent(
                                            rntId: notifications[index].rntId ??
                                                ''),
                                      );
                                },
                                title: Text(
                                  notifications[index].createdDate ?? '',
                                  style: kfontstyle(
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w300),
                                ),
                                subtitle: Text(
                                  notifications[index].rntHeader ?? '',
                                  style: kfontstyle(
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                                trailing: const SizedBox(),
                                // trailing:
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          notifications[index]
                                                  .rntReplyMessage ??
                                              '',
                                          style: kfontstyle(
                                              fontWeight: FontWeight.w300),
                                        ),
                                        SizedBox(
                                          height: 7.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      border: Border.all(
                                                          color: Colors
                                                              .grey.shade200),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10.0),
                                                      boxShadow: const [
                                                        BoxShadow(
                                                            color: Colors.grey,
                                                            blurRadius: 0.4,
                                                            spreadRadius: 0.2)
                                                      ]),
                                                  child: TextFormField(
                                                    controller:
                                                        replayctrls[index],
                                                    decoration: InputDecoration(
                                                        hintText:
                                                            "Type your reply...",
                                                        hintStyle:
                                                            const TextStyle(
                                                                fontSize: 14,
                                                                color:
                                                                    Colors.grey,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal),
                                                        isDense: true,
                                                        counterText: "",
                                                        contentPadding:
                                                            const EdgeInsets
                                                                .all(15.0),
                                                        filled: true,
                                                        fillColor: Colors.white,
                                                        border: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                            borderSide:
                                                                BorderSide
                                                                    .none)),
                                                    textAlign: TextAlign.start,
                                                    maxLines: 1,
                                                    maxLength: 20,
                                                    // controller: _locationNameTextController,
                                                  )),
                                            ),
                                            SizedBox(
                                              width: 10.w,
                                            ),
                                            IconButton(
                                              onPressed: () {
                                                context
                                                    .read<
                                                        NotificationReplayBlocBloc>()
                                                    .add(
                                                      SendNotiReplayEvent(
                                                        replay: NotificationReplayInModel(
                                                            rntId:
                                                                notifications[
                                                                        index]
                                                                    .rntId,
                                                            rntReplyMessage:
                                                                replayctrls[
                                                                        index]
                                                                    .text,
                                                            rntReplyUserId:
                                                                notifications[
                                                                        index]
                                                                    .rntUsrId),
                                                      ),
                                                    );
                                              },
                                              icon: Image.asset(
                                                "assets/images/send.png",
                                                height: 35.h,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          separatorBuilder: (context, index) => SizedBox(
                            height: 8.h,
                          ),
                          itemCount: 3,
                        ),
                      ),
                getNotificationFailedState: () => Center(
                  child: Text(
                    'No Data Available',
                    style: kfontstyle(),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
