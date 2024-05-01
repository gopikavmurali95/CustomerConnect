import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approval_reson_model/approval_reson_model.dart';
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
  const DisputeNoteDetailScreen(
      {super.key, required this.user, required this.disputenote});

  @override
  State<DisputeNoteDetailScreen> createState() =>
      _DisputeNoteDetailScreenState();
}

List<String> selectedresons = [];
List<bool?> statuslist = [];
bool isLoading = false;

int loadingCount = 0;
List<ApprovalResonModel> availableresons = [];
int approvedCount = 0;

TextEditingController _remarksctrls = TextEditingController();

class _DisputeNoteDetailScreenState extends State<DisputeNoteDetailScreen> {
  @override
  void initState() {
    _remarksctrls = TextEditingController();
    context
        .read<DisputeNoteDetailBloc>()
        .add(const ClearDisputeNoteDetailEvent());
    context
        .read<DisputeNoteDetailBloc>()
        .add(GetDisputeNoteDetailEvent(reqId: widget.disputenote.drhId ?? ''));
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
          "Approval Detail",
          style: appHeading(),
        ),
      ),
      body: PopScope(
        onPopInvoked: (didPop) {
          context
              .read<DisputeNoteHeaderBloc>()
              .add(const ClearDisputeNoteHEaderEvent());

          context
              .read<DisputeNoteHeaderBloc>()
              .add(GetDisputeNoteHeadersEvent(userID: widget.user.usrId ?? ''));
        },
        child: Column(
          children: [
            Expanded(
              child:
                  BlocConsumer<DisputeNoteDetailBloc, DisputeNoteDetailState>(
                listener: (context, state) {
                  state.when(
                    getDisputeNoteDetailState: (details) {
                      if (details != null) {
                        statuslist /* length = details.length; */
                            = List.generate(details.length, (index) => null);

                        /* for (int i = 0; i < details.length; i++) {
                      if (details[i].!.isNotEmpty) {
                        if (details[i].radApprovalStatus == 'A') {
                          statuslist[i] = true;
                        } else {
                          statuslist[i] = false;
                        }
                      }
                    } */
                      }
                    },
                    getdisputenoteDetailFailedState: () {},
                  );
                },
                builder: (context, state) {
                  return state.when(
                    getDisputeNoteDetailState: (details) => details == null
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
                            // physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) => Padding(
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
                                              details[index].invoiceId ?? '',
                                              style: kfontstyle(
                                                fontSize: 12.sp,
                                                color: const Color(0xff7b70ac),
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              details[index].transTime ?? '',
                                              style: kfontstyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
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
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 5),
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
                      if (statuslevel.currentLevel == '1') {
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
                      } else {
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
                      }
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
                                    ? 'Disputenote ${resp.status}'
                                    : 'Disputenote ${resp.status}',
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
                  return SizedBox(
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
                            decoration: InputDecoration(
                              hintText: 'Remarks',
                              hintStyle: kfontstyle(
                                fontSize: 12.sp,
                                color: Colors.red.shade300,
                              ),
                              border: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey[300]!),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey[300]!),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.grey[300]!),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: MaterialButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  color: Colors.red.shade300,
                                  onPressed: () {
                                    context
                                        .read<
                                            DisputeApprovalStatusLevelCubitCubit>()
                                        .addDisputeStatusLoaingEvent();
                                    context
                                        .read<
                                            DisputeApprovalStatusLevelCubitCubit>()
                                        .checkApprovalstatusLevel(
                                            widget.user.usrId ?? '', false);
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
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  color: Colors.green.shade300,
                                  onPressed: () {
                                    context
                                        .read<
                                            DisputeApprovalStatusLevelCubitCubit>()
                                        .addDisputeStatusLoaingEvent();
                                    context
                                        .read<
                                            DisputeApprovalStatusLevelCubitCubit>()
                                        .checkApprovalstatusLevel(
                                            widget.user.usrId ?? '', true);
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
