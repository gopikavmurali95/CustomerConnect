import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/journey_plan_approval_in_model/journey_plan_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/journeyplanapproval/jourey_plan_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/journeyplanheader/journey_plan_header_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class JourneyPlanHeaderScreen extends StatefulWidget {
  final LoginUserModel user;
  const JourneyPlanHeaderScreen({super.key, required this.user});

  @override
  State<JourneyPlanHeaderScreen> createState() =>
      _JourneyPlanHeaderScreenState();
}

List<bool?> statuslist = [];
int loadingCount = 0;

class _JourneyPlanHeaderScreenState extends State<JourneyPlanHeaderScreen> {
  @override
  void initState() {
    context
        .read<JourneyPlanHeaderBloc>()
        .add(const ClearJourneyPlanHeadersEvent());
    context
        .read<JourneyPlanHeaderBloc>()
        .add(GetAllJourneyPlanHeadersEvent(userID: widget.user.usrId ?? ''));
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
          "Journey plan ",
          style: appHeading(),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child:
                  BlocListener<JourneyPlanHeaderBloc, JourneyPlanHeaderState>(
            listener: (context, state) {
              state.when(
                getAllJourneyPlanHeadersState: (headers) {
                  if (headers != null) {
                    statuslist = List.generate(headers.length, (index) => null);
                  }
                },
                journeyPlanHeadersFailedState: () {},
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: BlocBuilder<JourneyPlanHeaderBloc, JourneyPlanHeaderState>(
                builder: (context, state) {
                  return state.when(
                    getAllJourneyPlanHeadersState: (headers) => headers == null
                        ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (context, index) =>
                                    ShimmerContainers(
                                        height: 60.h, width: double.infinity),
                                separatorBuilder: (context, index) => Divider(
                                      color: Colors.grey[300],
                                    ),
                                itemCount: 10),
                          )
                        : ListView.separated(
                            itemBuilder: (context, index) => GestureDetector(
                                  onTap: () {
                                    /*  Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        DisputeNoteDetailScreen(
                                                      disputenote: headers[index],
                                                      user: widget.user,
                                                    ),
                                                  ),
                                                ); */
                                  },
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 10,
                                        decoration: BoxDecoration(
                                            color: const Color(0xfffee8e0),
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    headers[index]
                                                            .jpsCurrentSeq ??
                                                        '',
                                                    style: kfontstyle(
                                                      fontSize: 12.sp,
                                                      color: const Color(
                                                          0xff2C6B9E),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        '${headers[index].cusCode} - ',
                                                        style: kfontstyle(
                                                            fontSize: 12.sp,
                                                            color: const Color(
                                                              0xff2C6B9E,
                                                            ),
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          headers[index]
                                                                  .cusName ??
                                                              '',
                                                          style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              color: const Color(
                                                                  0xff413434)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Text(
                                                        '${headers[index].cusCode} - ',
                                                        style: kfontstyle(
                                                          fontSize: 12.sp,
                                                          color: const Color(
                                                              0xff2C6B9E),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Text(
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          headers[index]
                                                                  .cusName ??
                                                              '',
                                                          style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              color: const Color(
                                                                  0xff413434)),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    '${headers[index].rotCode} |${headers[index].createdDate}',
                                                    style: kfontstyle(
                                                        fontSize: 10.sp,
                                                        color: Colors.grey),
                                                  ),
                                                  BlocConsumer<
                                                      JoureyPlanApprovalBloc,
                                                      JoureyPlanApprovalState>(
                                                    listener: (context, state) {
                                                      state.when(
                                                        approveJourneyPlanState:
                                                            (response) {
                                                          if (response !=
                                                              null) {
                                                            Navigator.pop(
                                                                context);
                                                            // if (isApproval) {
                                                            showCupertinoDialog(
                                                              context: context,
                                                              builder: (context) =>
                                                                  CupertinoAlertDialog(
                                                                title:
                                                                    const Text(
                                                                        'Alert'),
                                                                content: Text(
                                                                    response.status ??
                                                                        ''),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed:
                                                                        () {
                                                                      context
                                                                          .read<
                                                                              JourneyPlanHeaderBloc>()
                                                                          .add(GetAllJourneyPlanHeadersEvent(
                                                                              userID: widget.user.usrId ?? ''));
                                                                      Navigator.pop(
                                                                          context);
                                                                    },
                                                                    child: const Text(
                                                                        'Proceed'),
                                                                  ),
                                                                ],
                                                              ),
                                                            );
                                                            // }
                                                          }
                                                        },
                                                        approveJourneyPlanFailedState:
                                                            () {
                                                          Navigator.pop(
                                                              context);
                                                          showCupertinoDialog(
                                                            context: context,
                                                            builder: (context) =>
                                                                CupertinoAlertDialog(
                                                              title: const Text(
                                                                  'Alert'),
                                                              content: const Text(
                                                                  "something went wrong, please try again later"),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed:
                                                                      () {
                                                                    context
                                                                        .read<
                                                                            JourneyPlanHeaderBloc>()
                                                                        .add(GetAllJourneyPlanHeadersEvent(
                                                                            userID:
                                                                                widget.user.usrId ?? ''));
                                                                    Navigator.pop(
                                                                        context);
                                                                  },
                                                                  child:
                                                                      const Text(
                                                                          'Ok'),
                                                                ),
                                                              ],
                                                            ),
                                                          );
                                                        },
                                                        approveJourneyPlanLoadingState:
                                                            () {
                                                          if (loadingCount ==
                                                              0) {
                                                            loadingCount = 1;
                                                            showCupertinoModalPopup(
                                                                context:
                                                                    context,
                                                                barrierDismissible:
                                                                    false,
                                                                builder:
                                                                    (context) =>
                                                                        SizedBox(
                                                                          height: MediaQuery.of(context)
                                                                              .size
                                                                              .height,
                                                                          width: MediaQuery.of(context)
                                                                              .size
                                                                              .width,
                                                                          child:
                                                                              const PopScope(
                                                                            canPop:
                                                                                true,
                                                                            child:
                                                                                CupertinoActivityIndicator(
                                                                              animating: true,
                                                                              color: Colors.red,
                                                                              radius: 30,
                                                                            ),
                                                                          ),
                                                                        ));
                                                          }
                                                        },
                                                      );
                                                    },
                                                    builder: (context, state) {
                                                      return Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          Transform.scale(
                                                            scale: 0.8,
                                                            child: Row(
                                                              children: [
                                                                Radio(
                                                                  fillColor: MaterialStateProperty.resolveWith<
                                                                      Color>((Set<
                                                                          MaterialState>
                                                                      states) {
                                                                    return (statuslist[index] ==
                                                                            true)
                                                                        ? const Color(
                                                                            0xff0075ff)
                                                                        : Colors
                                                                            .grey;
                                                                  }),
                                                                  /* activeColor: isselected == true
                                                                                                                                                                                                                        ? const Color(0xff0075ff)
                                                                                                                                                                                                                        : Colors.grey, */
                                                                  value: statuslist[
                                                                              index] ==
                                                                          null
                                                                      ? false
                                                                      : statuslist[index] ==
                                                                              true
                                                                          ? true
                                                                          : false,
                                                                  groupValue:
                                                                      true,
                                                                  onChanged:
                                                                      (value) {
                                                                    showCupertinoDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) =>
                                                                              CupertinoAlertDialog(
                                                                        title: const Text(
                                                                            'Alert'),
                                                                        content:
                                                                            const Text("Do you Want to Approve this product"),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed:
                                                                                () {
                                                                              setState(() {});
                                                                              Navigator.pop(context);
                                                                            },
                                                                            child:
                                                                                const Text('Cancel'),
                                                                          ),
                                                                          TextButton(
                                                                            onPressed:
                                                                                () {
                                                                              statuslist[index] = true;
                                                                              loadingCount = 0;
                                                                              setState(() {});
                                                                              context.read<JoureyPlanApprovalBloc>().add(const AddJourneyPlanApprovalLoadingEvent());

                                                                              context.read<JoureyPlanApprovalBloc>().add(ApproveJourneyPlanEvent(approve: JourneyPlanApprovalInModel(jpsId: headers[index].jpsId, userId: widget.user.usrId)));

                                                                              Navigator.pop(context);
                                                                            },
                                                                            child:
                                                                                const Text('Proceed'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    );
                                                                  },
                                                                ),
                                                                Text(
                                                                  'Approve',
                                                                  style:
                                                                      kfontstyle(),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Transform.scale(
                                                            scale: 0.8,
                                                            child: Row(
                                                              children: [
                                                                Radio(
                                                                  fillColor: MaterialStateProperty.resolveWith<
                                                                      Color>((Set<
                                                                          MaterialState>
                                                                      states) {
                                                                    return (statuslist[index] !=
                                                                                null &&
                                                                            !statuslist[
                                                                                index]!)
                                                                        ? const Color(
                                                                            0xff0075ff)
                                                                        : Colors
                                                                            .grey;
                                                                  }),
                                                                  /*  activeColor: isselected == false
                                                                                                                                                                                                                        ? const Color(0xff0075ff)
                                                                                                                                                                                                                        : Colors.grey, */
                                                                  value: statuslist[
                                                                              index] ==
                                                                          null
                                                                      ? true
                                                                      : statuslist[index] ==
                                                                              true
                                                                          ? true
                                                                          : false,
                                                                  groupValue:
                                                                      false,
                                                                  onChanged:
                                                                      (value) {
                                                                    showCupertinoDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) =>
                                                                              CupertinoAlertDialog(
                                                                        title: const Text(
                                                                            'Alert'),
                                                                        content:
                                                                            const Text("Do you Want to Reject this product"),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed:
                                                                                () {
                                                                              setState(() {});
                                                                              Navigator.pop(context);
                                                                            },
                                                                            child:
                                                                                const Text('Cancel'),
                                                                          ),
                                                                          TextButton(
                                                                            onPressed:
                                                                                () {
                                                                              statuslist[index] = false;
                                                                              loadingCount = 0;
                                                                              setState(() {});
                                                                              context.read<JoureyPlanApprovalBloc>().add(const AddJourneyPlanApprovalLoadingEvent());

                                                                              context.read<JoureyPlanApprovalBloc>().add(RejectaJOurneyPlanEvent(reject: JourneyPlanApprovalInModel(jpsId: headers[index].jpsId, userId: widget.user.usrId)));

                                                                              Navigator.pop(context);
                                                                            },
                                                                            child:
                                                                                const Text('Proceed'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    );

                                                                    /* context
                                                                                                                                                                                          .read<
                                                                                                                                                                                              AapprovalOrRejectRadioCubit>()
                                                                                                                                                                                          .changeApprovalStatus(
                                                                                                                                                                                              statuslist[index]); */
                                                                  },
                                                                ),
                                                                Text(
                                                                  'Reject',
                                                                  style:
                                                                      kfontstyle(),
                                                                )
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      );
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            separatorBuilder: (context, index) => Divider(
                                  color: Colors.grey[300],
                                ),
                            itemCount: headers.length),
                    journeyPlanHeadersFailedState: () => Center(
                      child: Text(
                        'No Data Available',
                        style: kfontstyle(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ))
        ],
      ),
    );
  }
}
