import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approval_reson_model/approval_reson_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/sheduled_return_header_model/sheduled_return_header_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalreasons/approval_reasons_bloc.dart';
import 'package:customer_connect/feature/state/bloc/scheduledreturnheader/schduled_return_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/scheuledreturndetail/scheduled_return_details_bloc.dart';
import 'package:customer_connect/feature/state/cubit/approvalradio/aapproval_or_reject_radio_cubit.dart';
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
int approvedCount = 0;

class _ScheduledReturnDetailScreenState
    extends State<ScheduledReturnDetailScreen> {
  @override
  void initState() {
    approvedCount = 0;
    loadingCount = 0;

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
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          "Approval Detail",
          style: appHeading(),
        ),
      ),
      body: PopScope(
        onPopInvoked: (didPop) {
          context.read<SchduledReturnHeaderBloc>().add(
              GetAllScheduledReturnHeadersEvent(
                  userID: widget.user.usrId ?? ''));
        },
        child: Column(
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
                      context.read<ApprovalReasonsBloc>().add(
                          const GetApprovalReasonsEvent(rsnType: 'rsnType'));
                      statuslist.clear();

                      statuslist /* length = details.length; */
                          = List.generate(details.length, (index) => null);

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
                  getScheduledReturnDetailState: (details) => details == null
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
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            details[index].prdCode ?? '',
                                            style: kfontstyle(
                                              fontSize: 12.sp,
                                              color: const Color(0xff7b70ac),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            details[index].prdName ?? '',
                                            style: kfontstyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              details[index].rrdHuom ?? '',
                                              style: kfontstyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black54),
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Text(
                                              details[index].rrdLuom ?? '',
                                              style: kfontstyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black54),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 50.w,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              details[index].hQty ?? '',
                                              style: kfontstyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black54),
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Text(
                                              details[index].lQty ?? '',
                                              style: kfontstyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black54),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: BlocConsumer<ApprovalReasonsBloc,
                                          ApprovalReasonsState>(
                                        listener: (context, state) {
                                          state.when(
                                            getApprovalResonsState: (resons) {
                                              if (resons != null) {
                                                selectedresons.clear();
                                                availableresons.clear();
                                                availableresons = [
                                                  ApprovalResonModel(
                                                      rsnId: '-1',
                                                      rsnName: 'Select reason',
                                                      rsnType: 'null')
                                                ];

                                                selectedresons = List.generate(
                                                    details.length,
                                                    (index) => '-1');

                                                availableresons.addAll(resons);
                                              }
                                            },
                                            getReasonsFailedState: () {},
                                          );
                                        },
                                        builder: (context, state) {
                                          return state.when(
                                            getApprovalResonsState: (resons) =>
                                                resons == null ||
                                                        availableresons.isEmpty
                                                    ? const ShimmerContainers(
                                                        height: 30,
                                                        width: 80,
                                                      )
                                                    : SizedBox(
                                                        // height: 30.h,
                                                        // width: MediaQuery.of(context).size.width / 3,
                                                        child:
                                                            DropdownButtonFormField(
                                                          dropdownColor:
                                                              Colors.white,
                                                          value:
                                                              availableresons[0]
                                                                      .rsnId ??
                                                                  '',
                                                          style: kfontstyle(
                                                              color:
                                                                  Colors.black),
                                                          decoration:
                                                              const InputDecoration(
                                                            border: InputBorder
                                                                .none,
                                                          ),
                                                          items: availableresons
                                                              .map(
                                                                  (ApprovalResonModel
                                                                      item) {
                                                            return DropdownMenuItem(
                                                              value: item.rsnId,
                                                              child: Text(
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                item.rsnName ??
                                                                    '',
                                                                style: kfontstyle(
                                                                    fontSize:
                                                                        9.sp),
                                                              ),
                                                            );
                                                          }).toList(),
                                                          onChanged: (value) {
                                                            selectedresons[
                                                                    index] =
                                                                value ?? '';
                                                          },
                                                        ),
                                                      ),
                                            getReasonsFailedState: () =>
                                                const SizedBox(),
                                          );
                                        },
                                      ),
                                    ),
                                    BlocBuilder<AapprovalOrRejectRadioCubit,
                                        AapprovalOrRejectRadioState>(
                                      builder: (context, state) {
                                        return AbsorbPointer(
                                          absorbing:
                                              details[index].status!.isNotEmpty
                                                  ? true
                                                  : false,
                                          child: Row(
                                            children: [
                                              Transform.scale(
                                                scale: 0.8,
                                                child: Row(
                                                  children: [
                                                    Radio(
                                                      fillColor:
                                                          MaterialStateProperty
                                                              .resolveWith<
                                                                  Color>((Set<
                                                                      MaterialState>
                                                                  states) {
                                                        return (statuslist[
                                                                    index] ==
                                                                true)
                                                            ? const Color(
                                                                0xff0075ff)
                                                            : Colors.grey;
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
                                                      groupValue: true,
                                                      onChanged: (value) {
                                                        if (selectedresons[
                                                                index] ==
                                                            '-1') {
                                                          showCupertinoDialog(
                                                            context: context,
                                                            builder: (context) =>
                                                                CupertinoAlertDialog(
                                                              title: const Text(
                                                                  'Alert'),
                                                              content: const Text(
                                                                  "Plese select a reason"),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed:
                                                                      () {
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
                                                        } else {
                                                          showCupertinoDialog(
                                                            context: context,
                                                            builder: (context) =>
                                                                CupertinoAlertDialog(
                                                              title: const Text(
                                                                  'Alert'),
                                                              content: const Text(
                                                                  "Do you Want to Approve this product"),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed:
                                                                      () {
                                                                    setState(
                                                                        () {});
                                                                    Navigator.pop(
                                                                        context);
                                                                  },
                                                                  child: const Text(
                                                                      'Cancel'),
                                                                ),
                                                                TextButton(
                                                                  onPressed:
                                                                      () {
                                                                    statuslist[
                                                                            index] =
                                                                        true;
                                                                    loadingCount =
                                                                        0;
                                                                    setState(
                                                                        () {});
                                                                    /*   Navigator.pop(
                                                                        context);
                                                                    context
                                                                        .read<
                                                                            ApproveReturnProductBloc>()
                                                                        .add(
                                                                            const AddApprovalLoadingEvent());
                          
                                                                    context
                                                                        .read<
                                                                            ApproveReturnProductBloc>()
                                                                        .add(
                                                                          ApproveProductEvent(
                                                                            approval: ReturnApproveInModel(radId: details[index].radId, reason: selectedresons[index], status: 'A', returnID: widget.returnApprovel.rahId, userID: '45'),
                                                                          ),
                                                                        ); */
                                                                  },
                                                                  child: const Text(
                                                                      'Proceed'),
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
                                                      style: kfontstyle(),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Transform.scale(
                                                scale: 0.8,
                                                child: Row(
                                                  children: [
                                                    Radio(
                                                      fillColor:
                                                          MaterialStateProperty
                                                              .resolveWith<
                                                                  Color>((Set<
                                                                      MaterialState>
                                                                  states) {
                                                        return (statuslist[
                                                                        index] !=
                                                                    null &&
                                                                !statuslist[
                                                                    index]!)
                                                            ? const Color(
                                                                0xff0075ff)
                                                            : Colors.grey;
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
                                                      groupValue: false,
                                                      onChanged: (value) {
                                                        if (selectedresons[
                                                                index] ==
                                                            '-1') {
                                                          showCupertinoDialog(
                                                            context: context,
                                                            builder: (context) =>
                                                                CupertinoAlertDialog(
                                                              title: const Text(
                                                                  'Alert'),
                                                              content: const Text(
                                                                  "Plese select a reason"),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed:
                                                                      () {
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
                                                        } else {
                                                          showCupertinoDialog(
                                                            context: context,
                                                            builder: (context) =>
                                                                CupertinoAlertDialog(
                                                              title: const Text(
                                                                  'Alert'),
                                                              content: const Text(
                                                                  "Do you Want to Reject this product"),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed:
                                                                      () {
                                                                    setState(
                                                                        () {});
                                                                    Navigator.pop(
                                                                        context);
                                                                  },
                                                                  child: const Text(
                                                                      'Cancel'),
                                                                ),
                                                                TextButton(
                                                                  onPressed:
                                                                      () {
                                                                    statuslist[
                                                                            index] =
                                                                        false;

                                                                    loadingCount =
                                                                        0;
                                                                    setState(
                                                                        () {});
                                                                    Navigator.pop(
                                                                        context);
                                                                    /* context
                                                                        .read<
                                                                            ApproveReturnProductBloc>()
                                                                        .add(
                                                                            const AddApprovalLoadingEvent());
                          
                                                                    context
                                                                        .read<
                                                                            ApproveReturnProductBloc>()
                                                                        .add(
                                                                          ApproveProductEvent(
                                                                            approval: ReturnApproveInModel(radId: details[index].radId, reason: selectedresons[index], status: 'R', returnID: widget.returnApprovel.rahId, userID: '45'),
                                                                          ),
                                                                        ); */
                                                                  },
                                                                  child: const Text(
                                                                      'Proceed'),
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
                                                      style: kfontstyle(),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        );
                                      },
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          separatorBuilder: (context, index) => Divider(
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
            ))
          ],
        ),
      ),
    );
  }
}
