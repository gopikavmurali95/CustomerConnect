import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/dispute_invoice_approve_in_model/dispute_invoice_approve_in_model.dart';
import 'package:customer_connect/feature/data/models/dispute_note_header_model/dispute_note_header_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/disputeapproval/dispute_note_approval_and_reject_bloc.dart';
import 'package:customer_connect/feature/state/bloc/disputenotedetail/dispute_note_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/disputenoteheader/dispute_note_header_bloc.dart';
import 'package:customer_connect/feature/state/cubit/disputeapprovalsatuslevel/dispute_approval_status_level_cubit_cubit.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DisputeNoteDetailScreen extends StatefulWidget {
  final LoginUserModel user;
  final DisputeNoteHeaderModel disputenote;
  final String currentMode;
  const DisputeNoteDetailScreen(
      {super.key,
      required this.user,
      required this.disputenote,
      required this.currentMode});

  @override
  State<DisputeNoteDetailScreen> createState() =>
      _DisputeNoteDetailScreenState();
}

TextEditingController _remarksctrls = TextEditingController();
Timer? debounce;

TextEditingController _disputedetailCtrl = TextEditingController();

class _DisputeNoteDetailScreenState extends State<DisputeNoteDetailScreen> {
  @override
  void initState() {
    _remarksctrls = TextEditingController();
    context
        .read<DisputeNoteDetailBloc>()
        .add(const ClearDisputeNoteDetailEvent());
    context.read<DisputeNoteDetailBloc>().add(GetDisputeNoteDetailEvent(
        reqId: widget.disputenote.drhId ?? '', searchQuery: ''));
    super.initState();
  }

  @override
  void dispose() {
    _remarksctrls.dispose();
    super.dispose();
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
          "Dispute request detail",
          style: appHeading(),
        ),
      ),
      body: PopScope(
        onPopInvoked: (didPop) {
          /*   context
              .read<DisputeNoteHeaderBloc>()
              .add(const ClearDisputeNoteHEaderEvent()); */

          context.read<DisputeNoteHeaderBloc>().add(GetDisputeNoteHeadersEvent(
              userID: widget.user.usrId ?? '',
              mode: widget.currentMode,
              searchQuery: ''));
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 10,
                    decoration: BoxDecoration(
                        color: const Color(0xfffee8e0),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.disputenote.drhTransId ?? '',
                                style: kfontstyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xff2C6B9E),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '${widget.disputenote.cusCode} - ',
                                    style: kfontstyle(
                                      fontSize: 11.sp,
                                      color: const Color(0xff2C6B9E),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      overflow: TextOverflow.ellipsis,
                                      widget.disputenote.cusName ?? '',
                                      style: kfontstyle(
                                          fontSize: 12.sp,
                                          color: const Color(0xff413434)),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                widget.disputenote.transTime ?? '',
                                style: kfontstyle(
                                    fontSize: 10.sp, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: widget.disputenote.status!.isEmpty ||
                                    widget.disputenote.status != 'Approved'
                                ? widget.disputenote.status == 'Rejected'
                                    ? Colors.red[300]
                                    : const Color(0xfff7f4e2)
                                : const Color(0xffe3f7e2),
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 5),
                            child: Text(
                              widget.disputenote.status ?? '',
                              style: kfontstyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: widget.disputenote.status == 'Rejected'
                                      ? Colors.white54
                                      : Colors.black54),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey[200],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 30.h,
                child: TextFormField(
                  controller: _disputedetailCtrl,
                  style: kfontstyle(fontSize: 13.sp, color: Colors.black87),
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: 'Search here..',
                    suffix: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: IconButton(
                              onPressed: () {
                                if (_disputedetailCtrl.text.isNotEmpty) {
                                  _disputedetailCtrl.clear();
                                  context
                                      .read<DisputeNoteDetailBloc>()
                                      .add(GetDisputeNoteDetailEvent(
                                        searchQuery: '',
                                        reqId: widget.disputenote.drhId ?? '',
                                      ));
                                }
                              },
                              icon: Icon(
                                Icons.clear,
                                size: 10.sp,
                              )),
                        ),
                        SizedBox(
                          height: 10.h,
                        )
                      ],
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 14.sp,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    border: /* InputBorder
                              .none  */
                        OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade200),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade200),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey.shade200),
                    ),
                  ),
                  onChanged: (value) {
                    debounce = Timer(
                        const Duration(
                          milliseconds: 500,
                        ), () async {
                      context.read<DisputeNoteDetailBloc>().add(
                          GetDisputeNoteDetailEvent(
                              searchQuery: value.trim(),
                              reqId: widget.disputenote.drhId ?? ''));
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Expanded(
              child:
                  BlocConsumer<DisputeNoteDetailBloc, DisputeNoteDetailState>(
                listener: (context, state) {
                  state.when(
                    getDisputeNoteDetailState: (details) {
                      if (details != null) {}
                    },
                    getdisputenoteDetailFailedState: () {},
                  );
                },
                builder: (context, state) {
                  return state.when(
                    getDisputeNoteDetailState: (details) => details == null
                        ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
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
                        : details.isEmpty
                            ? Center(
                                child: Text(
                                  'No Data Available',
                                  style: kfontstyle(),
                                ),
                              )
                            : ListView.separated(
                                shrinkWrap: true,
                                // physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
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
                                                  details[index].invoiceId ??
                                                      '',
                                                  style: kfontstyle(
                                                    fontSize: 12.sp,
                                                    color:
                                                        const Color(0xff7b70ac),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                Text(
                                                  details[index].transTime ??
                                                      '',
                                                  style: kfontstyle(
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.black54),
                                                ),
                                                Text(
                                                  "AED ${details[index].invoiceAmount}",
                                                  style: kfontstyle(
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black54,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(15)),
                                                color: Color(0xfff7f4e2)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 8,
                                                      vertical: 5),
                                              child: Text(
                                                'AED ${details[index].drdInvoiceBalance}',
                                                style: kfontstyle(
                                                    fontSize: 10.sp,
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.black54),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                separatorBuilder: (context, index) => Divider(
                                  color: Colors.grey[300],
                                ),
                                itemCount: details.length,
                              ),
                    getdisputenoteDetailFailedState: () => Center(
                      child: Text(
                        'No Data Available',
                        style: kfontstyle(),
                      ),
                    ),
                  );
                },
              ),
            ),
            BlocListener<DisputeApprovalStatusLevelCubitCubit,
                DisputeApprovalStatusLevelCubitState>(
              listener: (context, state) {
                state.when(
                  getDisputeApprovalStatusLevelState:
                      (statuslevel, isApproval) {
                    if (statuslevel != null) {
                      // if (statuslevel.currentLevel == '1') {
                      FocusScope.of(context).unfocus();

                      Navigator.pop(context);
                      showCupertinoDialog(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                          title: const Text('Alert'),
                          content: Text(statuslevel.status ?? ''),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                                context
                                    .read<DisputeNoteApprovalAndRejectBloc>()
                                    .add(
                                        const AddDisputeNoteApprovalLoadingEvent());
                                context
                                    .read<DisputeNoteApprovalAndRejectBloc>()
                                    .add(
                                      ApproveDisputeNoteEvent(
                                        approve: DisputeInvoiceApproveInModel(
                                            nextLevel: isApproval == true
                                                ? statuslevel.nextLevel
                                                : '',
                                            remark: _remarksctrls.text,
                                            reqId: widget.disputenote.drhId,
                                            userId: widget.user.usrId ?? ''),
                                      ),
                                    );
                              },
                              child: const Text('Proceed'),
                            ),
                          ],
                        ),
                      );
                      /* } else {
                        showCupertinoDialog(
                          context: context,
                          builder: (context) => CupertinoAlertDialog(
                            title: const Text('Alert'),
                            content: Text(statuslevel.status ?? ''),
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
                      } */
                    }
                  },
                  disputStatusLevelFailedState: () {
                    Navigator.pop(context);
                    showCupertinoDialog(
                      context: context,
                      builder: (context) => CupertinoAlertDialog(
                        title: Text(
                          'Alert',
                          style: kfontstyle(),
                        ),
                        content: Text(
                          'Something went wrong , please try again later',
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
                  disputeApprovastatusLoadingState: () {
                    FocusScope.of(context).unfocus();

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
              child: BlocConsumer<DisputeNoteApprovalAndRejectBloc,
                  DisputeNoteApprovalAndRejectState>(
                listener: (context, state) {
                  state.when(
                    disputeNoteApprovalOrRejectState: (resp, isApprove) {
                      if (resp != null && isApprove != null) {
                        Navigator.pop(context);
                        showCupertinoDialog(
                          context: context,
                          builder: (context) => PopScope(
                            canPop: false,
                            child: CupertinoAlertDialog(
                              title: Text(
                                'Alert',
                                style: kfontstyle(),
                              ),
                              content: Text(
                                isApprove == true
                                    ? 'Dispute note ${resp.status}'
                                    : 'Dispute note ${resp.status}',
                                style: kfontstyle(),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                  child: const Text('Ok'),
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                    },
                    disputeApprovalFailedState: () {
                      Navigator.pop(context);
                      showCupertinoDialog(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                          title: Text(
                            'Alert',
                            style: kfontstyle(),
                          ),
                          content: Text(
                            'Something went wrong , please try again later',
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
                    disputeApprovalLoadingState: () {
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
                  return BlocBuilder<DisputeNoteDetailBloc,
                      DisputeNoteDetailState>(
                    builder: (context, state) {
                      return state.when(
                        getDisputeNoteDetailState: (details) => details == null
                            ? const SizedBox.shrink()
                            : SizedBox(
                                height: 80.h,
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                      ),
                                      child: TextFormField(
                                        controller: _remarksctrls,
                                        enabled: widget.disputenote.status ==
                                                'Pending'
                                            ? true
                                            : false,
                                        decoration: InputDecoration(
                                          hintText: 'Remarks',
                                          hintStyle: kfontstyle(
                                            fontSize: 12.sp,
                                            color: widget.disputenote.status ==
                                                    'Pending'
                                                ? Colors.red.shade300
                                                : Colors.grey,
                                          ),
                                          border: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey[300]!),
                                          ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey[300]!),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.grey[300]!),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Row(
                                        children: [
                                          Flexible(
                                            flex: 1,
                                            fit: FlexFit.tight,
                                            child: MaterialButton(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              color:
                                                  widget.disputenote.status ==
                                                          'Pending'
                                                      ? Colors.red.shade300
                                                      : Colors.grey[300],
                                              onPressed: () {
                                                if (widget.disputenote.status ==
                                                    'Pending') {
                                                  context
                                                      .read<
                                                          DisputeApprovalStatusLevelCubitCubit>()
                                                      .addDisputeStatusLoaingEvent();
                                                  context
                                                      .read<
                                                          DisputeApprovalStatusLevelCubitCubit>()
                                                      .checkApprovalstatusLevel(
                                                          widget.user.usrId ??
                                                              '',
                                                          false);
                                                }
                                              },
                                              child: Text(
                                                'Reject',
                                                style: kfontstyle(
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10.w,
                                          ),
                                          Flexible(
                                            flex: 1,
                                            fit: FlexFit.tight,
                                            child: MaterialButton(
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              color:
                                                  widget.disputenote.status ==
                                                          'Pending'
                                                      ? Colors.green.shade300
                                                      : Colors.grey[300],
                                              onPressed: () {
                                                if (widget.disputenote.status ==
                                                    'Pending') {
                                                  context
                                                      .read<
                                                          DisputeApprovalStatusLevelCubitCubit>()
                                                      .addDisputeStatusLoaingEvent();
                                                  context
                                                      .read<
                                                          DisputeApprovalStatusLevelCubitCubit>()
                                                      .checkApprovalstatusLevel(
                                                          widget.user.usrId ??
                                                              '',
                                                          true);
                                                }
                                              },
                                              child: Text(
                                                'Approve',
                                                style: kfontstyle(
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                        getdisputenoteDetailFailedState: () =>
                            const SizedBox.shrink(),
                      );
                    },
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
