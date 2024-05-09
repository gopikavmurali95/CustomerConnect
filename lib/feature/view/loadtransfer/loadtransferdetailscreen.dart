import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/load_transfer_approval_header_model/load_transfer_approval_header_model.dart';
import 'package:customer_connect/feature/data/models/load_transfer_approval_in_model/load_transfer_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/loadtransferapproval/load_transfer_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/loadtransferdetail/load_transfer_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/loadtransferheader/load_transfer_header_bloc.dart';
import 'package:customer_connect/feature/state/cubit/approvalradio/aapproval_or_reject_radio_cubit.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoadTransferDetailScreen extends StatefulWidget {
  final LoginUserModel user;
  final LoadTransferApprovalHeaderModel header;
  const LoadTransferDetailScreen(
      {super.key, required this.user, required this.header});

  @override
  State<LoadTransferDetailScreen> createState() =>
      _LoadTransferDetailScreenState();
}

List<String> selectedresons = [];
List<bool?> statuslist = [];
bool isLoading = false;

int _responsecount = 0;
int loadingCount = 0;
int _approvedCount = 0;
int _totalCount = 0;
showPopAlert(BuildContext context) {
  showCupertinoDialog(
    context: context,
    builder: (context) => CupertinoAlertDialog(
      title: const Text('Alert'),
      content: const Text("Please approve or reject all the items"),
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
}

class _LoadTransferDetailScreenState extends State<LoadTransferDetailScreen> {
  @override
  void initState() {
    _approvedCount = 0;
    _responsecount = 1;
    context
        .read<LoadTransferDetailBloc>()
        .add(const ClearLoadTransferDetailEvent());
    context
        .read<LoadTransferDetailBloc>()
        .add(GetAllLoadTransferDetailEvent(reqID: widget.header.ltrId ?? ''));
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
            if (_approvedCount != 0 && _approvedCount != _totalCount) {
              showPopAlert(context);
              return;
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
          "Approval Detail",
          style: appHeading(),
        ),
      ),
      body: PopScope(
        canPop:
            _approvedCount == 0 || _approvedCount == _totalCount ? true : false,
        onPopInvoked: (didPop) {
          if (_approvedCount != 0 && _approvedCount != _totalCount) {
            context.read<LoadTransferHeaderBloc>().add(
                const GetAllLoadTransferHeadersEvent(
                    userID: /* widget.user.usrId?? */ '48'));

            log("$_approvedCount / $_totalCount");
            showPopAlert(context);
          } else {
            log("$_approvedCount / $_totalCount");
            return;
          }
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
                child: BlocConsumer<LoadTransferDetailBloc,
                    LoadTransferDetailState>(
              listener: (context, state) {
                state.when(
                  getLoadTransferDetailState: (details) {
                    if (details != null) {
                      _totalCount = details.length;
                      /*  context.read<ApprovalReasonsBloc>().add(
                          const GetApprovalReasonsEvent(rsnType: 'rsnType')); */
                      if (statuslist.length != details.length) {
                        statuslist.clear();

                        statuslist =
                            List.generate(details.length, (index) => null);
                      }

                      /* for (int i = 0; i < details.length; i++) {
                        if (details[i].ap!.isNotEmpty) {
                          if (details[i].radApprovalStatus == 'A') {
                            statuslist[i] = true;
                          } else {
                            statuslist[i] = false;
                          }
                        }
                      } */
                    }
                  },
                  loadTransferDetailFailedState: () {},
                );
              },
              builder: (context, state) {
                return state.when(
                  getLoadTransferDetailState: (details) => details == null
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
                          itemBuilder: (context, index) => BlocListener<
                              LoadTransferApprovalBloc,
                              LoadTransferApprovalState>(
                            listener: (context, state) {
                              state.when(
                                approveLoadTransferState: (response) {
                                  if (response != null) {
                                    if (_responsecount == 0) {
                                      _approvedCount += 1;
                                      _responsecount = 1;
                                    }
                                    Navigator.pop(context);
                                    isLoading = false;

                                    showCupertinoDialog(
                                      context: context,
                                      builder: (context) =>
                                          CupertinoAlertDialog(
                                        title: const Text('Alert'),
                                        content: Text("${response.status}"),
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
                                  }
                                },
                                loadTransferApprovalLoadingState: () {
                                  if (loadingCount == 0) {
                                    loadingCount = 1;
                                    _responsecount = 0;

                                    showCupertinoModalPopup(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (context) => SizedBox(
                                              height: MediaQuery.of(context)
                                                  .size
                                                  .height,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              child: const PopScope(
                                                canPop: true,
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
                                loadTransferApprovalFailedState: () {
                                  log(loadingCount.toString());
                                  if (_responsecount == 0) {
                                    // _approvedCount = 5;
                                    // _approvedCount++;
                                    statuslist[index] = null;
                                    _responsecount = 1;
                                  }

                                  setState(() {});
                                  Navigator.pop(context);
                                  showCupertinoDialog(
                                    context: context,
                                    builder: (context) => CupertinoAlertDialog(
                                      title: const Text('Alert'),
                                      content: const Text(
                                          "Something Went Wrong, please Try again later"),
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
                              );
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
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
                                                details[index].ldrOffloadHuom ??
                                                    '',
                                                style: kfontstyle(
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black54),
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Text(
                                                details[index].ldrOffloadLuom ??
                                                    '',
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
                                                details[index].ldrBalanceHQty ??
                                                    '',
                                                style: kfontstyle(
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black54),
                                              ),
                                              SizedBox(
                                                height: 10.h,
                                              ),
                                              Text(
                                                details[index].ldrBalanceLQty ??
                                                    '',
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
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      BlocBuilder<AapprovalOrRejectRadioCubit,
                                          AapprovalOrRejectRadioState>(
                                        builder: (context, state) {
                                          return Row(
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
                                                                onPressed: () {
                                                                  setState(
                                                                      () {});
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: const Text(
                                                                    'Cancel'),
                                                              ),
                                                              TextButton(
                                                                onPressed: () {
                                                                  statuslist[
                                                                          index] =
                                                                      true;
                                                                  loadingCount =
                                                                      0;
                                                                  setState(
                                                                      () {});
                                                                  Navigator.pop(
                                                                      context);
                                                                  context
                                                                      .read<
                                                                          LoadTransferApprovalBloc>()
                                                                      .add(
                                                                          const AddLoadTransferLoadingEvent());

                                                                  context
                                                                      .read<
                                                                          LoadTransferApprovalBloc>()
                                                                      .add(
                                                                        ApproveLoadtransferEvent(
                                                                          approve:
                                                                              LoadTransferApprovalInModel(
                                                                            ldrId:
                                                                                details[index].ldrId,
                                                                            reqId:
                                                                                widget.header.ltrId,
                                                                            status:
                                                                                'A',
                                                                            userId: /* widget.user.usrId */
                                                                                '48',
                                                                          ),
                                                                        ),
                                                                      );
                                                                },
                                                                child: const Text(
                                                                    'Proceed'),
                                                              ),
                                                            ],
                                                          ),
                                                        );
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
                                                                onPressed: () {
                                                                  setState(
                                                                      () {});
                                                                  Navigator.pop(
                                                                      context);
                                                                },
                                                                child: const Text(
                                                                    'Cancel'),
                                                              ),
                                                              TextButton(
                                                                onPressed: () {
                                                                  statuslist[
                                                                          index] =
                                                                      false;

                                                                  loadingCount =
                                                                      0;
                                                                  setState(
                                                                      () {});
                                                                  Navigator.pop(
                                                                      context);
                                                                  context
                                                                      .read<
                                                                          LoadTransferApprovalBloc>()
                                                                      .add(
                                                                          const AddLoadTransferLoadingEvent());

                                                                  context
                                                                      .read<
                                                                          LoadTransferApprovalBloc>()
                                                                      .add(
                                                                        ApproveLoadtransferEvent(
                                                                          approve:
                                                                              LoadTransferApprovalInModel(
                                                                            ldrId:
                                                                                details[index].ldrId,
                                                                            reqId:
                                                                                widget.header.ltrId,
                                                                            status:
                                                                                'R',
                                                                            userId: /* widget.user.usrId */
                                                                                '48',
                                                                          ),
                                                                        ),
                                                                      );
                                                                },
                                                                child: const Text(
                                                                    'Proceed'),
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
                                                      style: kfontstyle(),
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          );
                                        },
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          separatorBuilder: (context, index) => Divider(
                            color: Colors.grey[300],
                          ),
                          itemCount: details.length,
                        ),
                  loadTransferDetailFailedState: () => Center(
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
