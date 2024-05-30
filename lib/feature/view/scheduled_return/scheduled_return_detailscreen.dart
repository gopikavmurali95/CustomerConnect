import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approval_reson_model/approval_reson_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/route_model/route_model.dart';
import 'package:customer_connect/feature/data/models/scheduled_return_approval_in_model/scheduled_return_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/sheduled_return_header_model/sheduled_return_header_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalreasons/approval_reasons_bloc.dart';
import 'package:customer_connect/feature/state/bloc/scheduledreturnapproval/schduled_return_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/scheduledreturnheader/schduled_return_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/scheuledreturndetail/scheduled_return_details_bloc.dart';
import 'package:customer_connect/feature/state/cubit/approvalradio/aapproval_or_reject_radio_cubit.dart';
import 'package:customer_connect/feature/state/cubit/cubit/navigateto_back_cubit.dart';
import 'package:customer_connect/feature/state/cubit/routeforsc/route_for_sc_cubit.dart';
import 'package:customer_connect/feature/view/scheduled_return/scheduled_return_headerscreen.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScheduledReturnDetailScreen extends StatefulWidget {
  final LoginUserModel user;
  final SheduledReturnHeaderModel scheduledreturn;
  const ScheduledReturnDetailScreen(
      {super.key, required this.user, required this.scheduledreturn});

  @override
  State<ScheduledReturnDetailScreen> createState() =>
      _ScheduledReturnDetailScreenState();
}

List<String> selectedresons = [];
List<bool?> statuslist = [];
bool isLoading = false;

int loadingCount = 0;
List<ApprovalResonModel> availableresons = [];

List<RouteModel> availableroutes = [];
int _approvedCount = 0;
int _totalcount = 0;
List<String> selectedRoute = [];

class _ScheduledReturnDetailScreenState
    extends State<ScheduledReturnDetailScreen> {
  @override
  void initState() {
    _approvedCount = 0;
    loadingCount = 0;

    availableresons.clear();
    availableroutes.clear();

    context
        .read<ScheduledReturnDetailsBloc>()
        .add(const ClearScheduledReturnDetailsEvent());
    context.read<ScheduledReturnDetailsBloc>().add(
        GetAllScheduledReturnDetailsEvent(
            reqID: widget.scheduledreturn.rrhId ?? ''));

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
            log(_approvedCount.toString());
            if (_approvedCount != 0 && _approvedCount != _totalcount) {
              Future.delayed(const Duration(microseconds: 100), () {
                showPopAlert(context);
              });
            } else {
              Navigator.pop(context);
            }
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          "Scheduled return detail",
          style: appHeading(),
        ),
      ),
      body: BlocListener<NavigatetoBackCubit, NavigatetoBackState>(
        listener: (context, state) {
          state.when(
            navigateToBackScreen: (popfromscreen) {
              log(popfromscreen.toString());
              if (popfromscreen == true) {
                Navigator.pop(context);
                // context.read<NavigatetoBackCubit>().cancelPop(false);
              }
            },
          );
        },
        child: PopScope(
          canPop:
              /* _approvedCount == 0 || _approvedCount == _totalcount ? true : */ false,
          onPopInvoked: (didPop) {
            if (_approvedCount != 0 && _approvedCount != _totalcount) {
              Future.delayed(const Duration(microseconds: 100), () {
                showPopAlert(context);
              });
            } else {
              context.read<NavigatetoBackCubit>().popFromScreen(true);
            }
          },
          child: BlocConsumer<SchduledReturnApprovalBloc,
              SchduledReturnApprovalState>(
            listener: (context, state) {
              state.when(
                scheduledReturnApprovalStatusStates: (status) {
                  if (status != null) {
                    _approvedCount++;
                    Navigator.pop(context);
                    showCupertinoDialog(
                      context: context,
                      builder: (context) => CupertinoAlertDialog(
                        title: const Text('Alert'),
                        content: Text("${status.status} "),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Ok'),
                          ),
                        ],
                      ),
                    );
                    context.read<SchduledReturnHeaderBloc>().add(
                        const GetAllScheduledReturnHeadersEvent(
                            userID: /* widget.user.usrId ?? */ '62'));
                  }
                },
                schduledReturnApprovalFailedState: () {
                  Navigator.pop(context);
                  showCupertinoDialog(
                    context: context,
                    builder: (context) => CupertinoAlertDialog(
                      title: const Text('Alert'),
                      content: Text(
                        "Something Went wrong , please try again later",
                        style: kfontstyle(),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Ok'),
                        ),
                      ],
                    ),
                  );
                },
                scheduledReturnLoadingState: () {
                  showCupertinoModalPopup(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) => SizedBox(
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: const PopScope(
                              canPop: true,
                              child: CupertinoActivityIndicator(
                                animating: true,
                                color: Colors.red,
                                radius: 30,
                              ),
                            ),
                          ));
                },
              );
            },
            builder: (context, state) {
              return Column(
                children: [
                  Container(
                    height: 30.h,
                    width: double.infinity,
                    color: const Color(0xfff5f5f5),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Item',
                            style: kfontstyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color: Colors.black54),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Row(
                            children: [
                              Text(
                                'UOM',
                                style: kfontstyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black54),
                              ),
                              SizedBox(
                                width: 40.w,
                              ),
                              Text(
                                'Qty',
                                style: kfontstyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black54),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: BlocConsumer<ScheduledReturnDetailsBloc,
                        ScheduledReturnDetailsState>(
                      listener: (context, state) {
                        state.when(
                          getScheduledReturnDetailState: (details) {
                            if (details != null) {
                              // Navigator.pop(context);
                              _totalcount = details.length;
                              statuslist.clear();
                              context
                                  .read<RouteForScCubit>()
                                  .getavailableroutes();

                              statuslist /* length = details.length; */
                                  = List.generate(
                                      details.length, (index) => null);
                              context.read<ApprovalReasonsBloc>().add(
                                  const GetApprovalReasonsEvent(
                                      rsnType: 'rsnType'));
                              selectedRoute = List.generate(
                                  details.length, (index) => '-1');

                              for (int i = 0; i < details.length; i++) {
                                if (details[i].status!.isNotEmpty) {
                                  if (details[i].status == 'A') {
                                    statuslist[i] = true;
                                  } else {
                                    statuslist[i] = false;
                                  }
                                }
                              }
                            }
                          },
                          scheduledReturnDetailFailedState: () {},
                        );
                      },
                      builder: (context, state) {
                        return state.when(
                          getScheduledReturnDetailState: (details) =>
                              details == null
                                  ? Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 0),
                                      child: ListView.separated(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) =>
                                              ShimmerContainers(
                                                  height: 60.h,
                                                  width: double.infinity),
                                          separatorBuilder: (context, index) =>
                                              Divider(
                                                color: Colors.grey[300],
                                              ),
                                          itemCount: 10),
                                    )
                                  : ListView.separated(
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) => Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        details[index]
                                                                .prdCode ??
                                                            '',
                                                        style: kfontstyle(
                                                          fontSize: 12.sp,
                                                          color: const Color(
                                                              0xff7b70ac),
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                      Text(
                                                        details[index]
                                                                .prdName ??
                                                            '',
                                                        style: kfontstyle(
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black54),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        Text(
                                                          details[index]
                                                                  .rrdHuom ??
                                                              '',
                                                          style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Colors
                                                                  .black54),
                                                        ),
                                                        SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        Text(
                                                          details[index]
                                                                  .rrdLuom ??
                                                              '',
                                                          style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Colors
                                                                  .black54),
                                                        ),
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      width: 50.w,
                                                    ),
                                                    Column(
                                                      children: [
                                                        Text(
                                                          details[index].hQty ??
                                                              '',
                                                          style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Colors
                                                                  .black54),
                                                        ),
                                                        SizedBox(
                                                          height: 10.h,
                                                        ),
                                                        Text(
                                                          details[index].lQty ??
                                                              '',
                                                          style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Colors
                                                                  .black54),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5.h,
                                            ),
                                            Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: BlocConsumer<
                                                          ApprovalReasonsBloc,
                                                          ApprovalReasonsState>(
                                                        listener:
                                                            (context, state) {
                                                          state.when(
                                                            getApprovalResonsState:
                                                                (resons) {
                                                              if (resons !=
                                                                  null) {
                                                                selectedresons
                                                                    .clear();
                                                                availableresons
                                                                    .clear();
                                                                availableresons =
                                                                    [
                                                                  ApprovalResonModel(
                                                                      rsnId:
                                                                          '-1',
                                                                      rsnName:
                                                                          'Select reason',
                                                                      rsnType:
                                                                          'null')
                                                                ];

                                                                selectedresons =
                                                                    List.generate(
                                                                        details
                                                                            .length,
                                                                        (index) =>
                                                                            '-1');

                                                                availableresons
                                                                    .addAll(
                                                                        resons);
                                                              }
                                                            },
                                                            getReasonsFailedState:
                                                                () {},
                                                          );
                                                        },
                                                        builder:
                                                            (context, state) {
                                                          return state.when(
                                                            getApprovalResonsState:
                                                                (resons) => resons ==
                                                                            null ||
                                                                        availableresons
                                                                            .isEmpty
                                                                    ? const ShimmerContainers(
                                                                        height:
                                                                            30,
                                                                        width:
                                                                            80,
                                                                      )
                                                                    : Transform
                                                                        .scale(
                                                                        scale:
                                                                            .8,
                                                                        child:
                                                                            DropdownButtonFormField(
                                                                          isExpanded:
                                                                              true,
                                                                          // elevation:
                                                                          //     16,
                                                                          dropdownColor:
                                                                              Colors.white,
                                                                          value:
                                                                              availableresons[0].rsnId ?? '',
                                                                          style:
                                                                              kfontstyle(color: Colors.black),
                                                                          decoration:
                                                                              InputDecoration(
                                                                            filled:
                                                                                true,
                                                                            fillColor:
                                                                                Colors.grey[100],
                                                                            border: /* OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.grey[100]!)) */
                                                                                InputBorder.none,
                                                                          ),
                                                                          items:
                                                                              availableresons.map((ApprovalResonModel item) {
                                                                            return DropdownMenuItem(
                                                                              value: item.rsnId,
                                                                              child: Text(
                                                                                overflow: TextOverflow.ellipsis,
                                                                                item.rsnName ?? '',
                                                                                style: kfontstyle(fontSize: 10.sp),
                                                                              ),
                                                                            );
                                                                          }).toList(),
                                                                          onChanged:
                                                                              (value) {
                                                                            selectedresons[index] =
                                                                                value ?? '';
                                                                          },
                                                                        ),
                                                                      ),
                                                            getReasonsFailedState:
                                                                () =>
                                                                    const SizedBox(),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                    Expanded(
                                                      child: BlocConsumer<
                                                          RouteForScCubit,
                                                          RouteForScState>(
                                                        listener:
                                                            (context, state) {
                                                          state.when(
                                                            getAllRoutesForScReturnState:
                                                                (routes) {
                                                              availableroutes
                                                                  .clear();

                                                              availableroutes =
                                                                  [
                                                                RouteModel(
                                                                    rotId: '-1',
                                                                    rotName:
                                                                        'Select a Route')
                                                              ];

                                                              if (routes !=
                                                                  null) {
                                                                availableroutes
                                                                    .addAll(
                                                                        routes);
                                                              }
                                                            },
                                                            getRoutesFailedState:
                                                                () {
                                                              availableroutes
                                                                  .clear();

                                                              availableroutes =
                                                                  [
                                                                RouteModel(
                                                                    rotId: '-1',
                                                                    rotName:
                                                                        'No Routes Available, Please try again laterss')
                                                              ];
                                                            },
                                                          );
                                                        },
                                                        builder:
                                                            (context, state) {
                                                          return Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                horizontal: 0,
                                                              ),
                                                              child: state.when(
                                                                getAllRoutesForScReturnState: (routes) => routes ==
                                                                            null ||
                                                                        availableroutes
                                                                            .isEmpty
                                                                    ? const ShimmerContainers(
                                                                        height:
                                                                            30,
                                                                        width: double
                                                                            .infinity,
                                                                      )
                                                                    : Transform
                                                                        .scale(
                                                                        // height:
                                                                        //     35.h,
                                                                        scale:
                                                                            0.8,
                                                                        child:
                                                                            DropdownButtonFormField(
                                                                          isExpanded:
                                                                              true,
                                                                          dropdownColor:
                                                                              Colors.white,
                                                                          value:
                                                                              availableroutes[0].rotId,
                                                                          style:
                                                                              kfontstyle(color: Colors.black),
                                                                          decoration:
                                                                              InputDecoration(
                                                                            filled:
                                                                                true,
                                                                            fillColor:
                                                                                Colors.grey[100],
                                                                            border:
                                                                                InputBorder.none,
                                                                          ),
                                                                          items:
                                                                              availableroutes.map((RouteModel item) {
                                                                            return DropdownMenuItem(
                                                                              value: item.rotId,
                                                                              child: Text(
                                                                                overflow: TextOverflow.ellipsis,
                                                                                item.rotName ?? '',
                                                                                style: kfontstyle(fontSize: 10.sp),
                                                                              ),
                                                                            );
                                                                          }).toList(),
                                                                          onChanged:
                                                                              (value) {
                                                                            selectedRoute[index] =
                                                                                value ?? '-1';
                                                                          },
                                                                        ),
                                                                      ),
                                                                getRoutesFailedState:
                                                                    () =>
                                                                        const SizedBox(),
                                                              ));
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    BlocBuilder<
                                                        AapprovalOrRejectRadioCubit,
                                                        AapprovalOrRejectRadioState>(
                                                      builder:
                                                          (context, state) {
                                                        return AbsorbPointer(
                                                          absorbing: details[
                                                                      index]
                                                                  .status!
                                                                  .isNotEmpty
                                                              ? true
                                                              : false,
                                                          child: Row(
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
                                                                            ? const Color(0xff0075ff)
                                                                            : Colors.grey;
                                                                      }),
                                                                      /* activeColor: isselected == true
                                                                                                                                                                            ? const Color(0xff0075ff)
                                                                                                                                                                            : Colors.grey, */
                                                                      value: statuslist[index] ==
                                                                              null
                                                                          ? false
                                                                          : statuslist[index] == true
                                                                              ? true
                                                                              : false,
                                                                      groupValue:
                                                                          true,
                                                                      onChanged:
                                                                          (value) {
                                                                        if (selectedresons[index] ==
                                                                                '-1' ||
                                                                            selectedRoute[index] ==
                                                                                '-1') {
                                                                          showCupertinoDialog(
                                                                            context:
                                                                                context,
                                                                            builder: (context) =>
                                                                                CupertinoAlertDialog(
                                                                              title: const Text('Alert'),
                                                                              content: const Text("Plese select a reason and route"),
                                                                              actions: [
                                                                                TextButton(
                                                                                  onPressed: () {
                                                                                    Navigator.pop(context);
                                                                                  },
                                                                                  child: const Text('Ok'),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          );
                                                                        } else {
                                                                          showCupertinoDialog(
                                                                            context:
                                                                                context,
                                                                            builder: (context) =>
                                                                                CupertinoAlertDialog(
                                                                              title: const Text('Alert'),
                                                                              content: const Text("Do you Want to Approve this product"),
                                                                              actions: [
                                                                                TextButton(
                                                                                  onPressed: () {
                                                                                    setState(() {});
                                                                                    Navigator.pop(context);
                                                                                  },
                                                                                  child: const Text('Cancel'),
                                                                                ),
                                                                                TextButton(
                                                                                  onPressed: () {
                                                                                    statuslist[index] = true;
                                                                                    loadingCount = 0;
                                                                                    setState(() {});
                                                                                    Navigator.pop(context);
                                                                                    context.read<SchduledReturnApprovalBloc>().add(const AddScheduledReturnApprovalLoadingEvent());

                                                                                    context.read<SchduledReturnApprovalBloc>().add(
                                                                                          APProveOrRejectScheduledReturnEvent(
                                                                                            approve: ScheduledReturnApprovalInModel(
                                                                                              reason: selectedresons[index],
                                                                                              returnId: widget.scheduledreturn.rrhId,
                                                                                              routeId: selectedRoute[index],
                                                                                              rrdId: details[index].rrdId,
                                                                                              status: 'A',
                                                                                              userId: widget.user.usrId,
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                  },
                                                                                  child: const Text('Proceed'),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          );
                                                                        }

                                                                        /*  context
                                                                                                                                              .read<
                                                                                                                                                  AapprovalOrRejectRadioCubit>()
                                                                                                                                              .changeApprovalStatus(
                                                                                                                                                  statuslist[index]); */
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
                                                                        return (statuslist[index] != null &&
                                                                                !statuslist[index]!)
                                                                            ? const Color(0xff0075ff)
                                                                            : Colors.grey;
                                                                      }),
                                                                      /*  activeColor: isselected == false
                                                                                                                                                                            ? const Color(0xff0075ff)
                                                                                                                                                                            : Colors.grey, */
                                                                      value: statuslist[index] ==
                                                                              null
                                                                          ? true
                                                                          : statuslist[index] == true
                                                                              ? true
                                                                              : false,
                                                                      groupValue:
                                                                          false,
                                                                      onChanged:
                                                                          (value) {
                                                                        if (selectedresons[index] ==
                                                                                '-1' ||
                                                                            selectedRoute[index] ==
                                                                                '-1') {
                                                                          showCupertinoDialog(
                                                                            context:
                                                                                context,
                                                                            builder: (context) =>
                                                                                CupertinoAlertDialog(
                                                                              title: const Text('Alert'),
                                                                              content: const Text("Plese select a reason and route"),
                                                                              actions: [
                                                                                TextButton(
                                                                                  onPressed: () {
                                                                                    Navigator.pop(context);
                                                                                  },
                                                                                  child: const Text('Ok'),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          );
                                                                        } else {
                                                                          showCupertinoDialog(
                                                                            context:
                                                                                context,
                                                                            builder: (context) =>
                                                                                CupertinoAlertDialog(
                                                                              title: const Text('Alert'),
                                                                              content: const Text("Do you Want to Reject this product"),
                                                                              actions: [
                                                                                TextButton(
                                                                                  onPressed: () {
                                                                                    setState(() {});
                                                                                    Navigator.pop(context);
                                                                                  },
                                                                                  child: const Text('Cancel'),
                                                                                ),
                                                                                TextButton(
                                                                                  onPressed: () {
                                                                                    statuslist[index] = false;

                                                                                    loadingCount = 0;
                                                                                    setState(() {});
                                                                                    Navigator.pop(context);
                                                                                    context.read<SchduledReturnApprovalBloc>().add(const AddScheduledReturnApprovalLoadingEvent());

                                                                                    context.read<SchduledReturnApprovalBloc>().add(
                                                                                          APProveOrRejectScheduledReturnEvent(
                                                                                            approve: ScheduledReturnApprovalInModel(
                                                                                              reason: selectedresons[index],
                                                                                              returnId: widget.scheduledreturn.rrhId,
                                                                                              routeId: selectedRoute[index],
                                                                                              rrdId: details[index].rrdId,
                                                                                              status: 'R',
                                                                                              userId: widget.user.usrId,
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                  },
                                                                                  child: const Text('Proceed'),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          );
                                                                        }

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
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ],
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      separatorBuilder: (context, index) =>
                                          Divider(
                                        color: Colors.grey[300],
                                      ),
                                      itemCount: details.length,
                                    ),
                          scheduledReturnDetailFailedState: () => Center(
                            child: Text(
                              'No Data Available',
                              style: kfontstyle(),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

const ddvalues = [
  DropdownMenuItem(
    value: '0',
    child: Text('Select Reason'),
  ),
  DropdownMenuItem(
    value: '1',
    child: Text('reason1'),
  ),
  DropdownMenuItem(
    value: '2',
    child: Text('reason2'),
  )
];
List<ApprovalResonModel> ddtest = [
  ApprovalResonModel(rsnId: '-1', rsnName: 'Select route', rsnType: 'null'),
  ApprovalResonModel(rsnId: '1', rsnName: 'route 1', rsnType: 'null'),
  ApprovalResonModel(rsnId: '2', rsnName: 'route 2', rsnType: 'null')
];

showPopAlert(BuildContext context) {
  showCupertinoDialog(
    context: context,
    builder: (context) => CupertinoAlertDialog(
      title: const Text('Alert'),
      content: const Text(
          "Please make sure you have approved or rejected all the items"),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            // Navigator.pop(context);
          },
          child: const Text('Ok'),
        ),
      ],
    ),
  );
}

showPopAlertConfrom(BuildContext context, LoginUserModel user) {
  showCupertinoDialog(
    context: context,
    builder: (context) => CupertinoAlertDialog(
      title: const Text('Alert'),
      content: const Text("Confirm going back from the screen"),
      actions: [
        TextButton(
          onPressed: () {
            // Navigator.popUntil(context, (route) => false);
            Navigator.pop(context);
          },
          child: const Text('cancel'),
        ),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
            // Navigator.pop(context);

            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => ScheduledReturnHEaderScreen(user: user),
                ));
          },
          child: const Text('confirm'),
        ),
      ],
    ),
  );
}
