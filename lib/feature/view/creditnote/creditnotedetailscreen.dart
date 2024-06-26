import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/credit_note_header_model/credit_note_header_model.dart';
import 'package:customer_connect/feature/data/models/dispute_invoice_approve_in_model/dispute_invoice_approve_in_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/creditnoteapproval/credit_note_approval_and_reject_bloc.dart';
import 'package:customer_connect/feature/state/bloc/creditnotedetail/credit_note_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/creditnoteheader/credit_note_header_bloc.dart';
import 'package:customer_connect/feature/state/cubit/creditnoteapprovallevel/credit_note_approval_level_status_cubit.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreditNoteDetailScreen extends StatefulWidget {
  final CreditNoteHeaderModel creditNote;
  final LoginUserModel user;
  final String currentMode;
  const CreditNoteDetailScreen(
      {super.key,
      required this.creditNote,
      required this.user,
      required this.currentMode});

  @override
  State<CreditNoteDetailScreen> createState() => _CreditNoteDetailScreenState();
}

TextEditingController _remarksctrls = TextEditingController();
TextEditingController _creditDetailtrls = TextEditingController();
Timer? debounce;

class _CreditNoteDetailScreenState extends State<CreditNoteDetailScreen> {
  @override
  void initState() {
    _creditDetailtrls.clear();
    _remarksctrls = TextEditingController();

    context
        .read<CreditNoteDetailBloc>()
        .add(const ClearCreditNoteDetailEvent());
    context.read<CreditNoteDetailBloc>().add(GetCreditNoteDetailsEvent(
        reqId: widget.creditNote.cnhId ?? '', searchQuery: ''));
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
          "Credit note detail",
          style: appHeading(),
        ),
      ),
      body: PopScope(
        onPopInvoked: (didPop) {
          context.read<CreditNoteHeaderBloc>().add(GetAllCreditNoteHeadersEvent(
              userId: widget.user.usrId ?? '',
              mode: widget.currentMode,
              searchQuery: ''));
        },
        child: BlocConsumer<CreditNoteApprovalAndRejectBloc,
            CreditNoteApprovalAndRejectState>(
          listener: (context, state) {
            state.when(
              creditNoteActionTakenState: (resp, isApprove) {
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
                              ? 'Credit note ${resp.status}'
                              : 'Credit note ${resp.status}',
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
              creditNoteApprovalFailedState: () {
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
              creditNoteApprovalLoadingState: () {
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
          builder: (context, state) {
            return Column(
              children: [
                SizedBox(
                  height: 3.h,
                ),
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
                                    widget.creditNote.cnhNumber ?? '',
                                    style: kfontstyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xff2C6B9E),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '${widget.creditNote.cusCode} - ',
                                        style: kfontstyle(
                                          fontSize: 11.sp,
                                          color: const Color(0xff2C6B9E),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          overflow: TextOverflow.ellipsis,
                                          widget.creditNote.cusName ?? '',
                                          style: kfontstyle(
                                              fontSize: 12.sp,
                                              color: const Color(0xff413434)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    widget.creditNote.createdDate ?? '',
                                    style: kfontstyle(
                                        fontSize: 10.sp, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: widget.creditNote.status!.isEmpty ||
                                        widget.creditNote.status !=
                                            'Action Taken'
                                    ? widget.creditNote.status == 'Rejected'
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
                                  widget.creditNote.status ?? '',
                                  style: kfontstyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          widget.creditNote.status == 'Rejected'
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
                    width: MediaQuery.of(context).size.width,
                    child: TextFormField(
                      controller: _creditDetailtrls,
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
                                    if (_creditDetailtrls.text.isNotEmpty) {
                                      _creditDetailtrls.clear();

                                      context.read<CreditNoteDetailBloc>().add(
                                          GetCreditNoteDetailsEvent(
                                              reqId:
                                                  widget.creditNote.cnhId ?? '',
                                              searchQuery: ''));
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
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 10),
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
                          context.read<CreditNoteDetailBloc>().add(
                              GetCreditNoteDetailsEvent(
                                  reqId: widget.creditNote.cnhId ?? '',
                                  searchQuery: value.trim()));
                        });
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  height: 30.h,
                  width: double.infinity,
                  color: const Color(0xfff5f5f5),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
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
                  child:
                      BlocBuilder<CreditNoteDetailBloc, CreditNoteDetailState>(
                    builder: (context, state) {
                      return state.when(
                        getCreditNoteDetailState: (details) => details == null
                            ? Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
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
                            : details.isEmpty
                                ? Center(
                                    child: Text(
                                      'No Data Available',
                                      style: kfontstyle(),
                                    ),
                                  )
                                : ListView.separated(
                                    itemBuilder: (context, index) => Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      details[index]
                                                              .invInvoiceId ??
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
                                                      details[index].prdName ??
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
                                                        details[index].huom ??
                                                            '',
                                                        style: kfontstyle(
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black54),
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      Text(
                                                        details[index].luom ??
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
                                                  SizedBox(
                                                    width: 50.w,
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        details[index]
                                                                .crdHQty ??
                                                            '',
                                                        style: kfontstyle(
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black54),
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      Text(
                                                        details[index]
                                                                .crdLQty ??
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
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                    separatorBuilder: (context, index) =>
                                        Divider(
                                          color: Colors.grey[300],
                                        ),
                                    itemCount: details.length),
                        creditNoteDetailFailedState: () => Center(
                          child: Text(
                            'No Data Available',
                            style: kfontstyle(),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                BlocListener<CreditNoteApprovalLevelStatusCubit,
                    CreditNoteApprovalLevelStatusState>(
                  listener: (context, state) {
                    state.when(
                      creditNoteApprovalStatusLevelState:
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
                                        .read<CreditNoteApprovalAndRejectBloc>()
                                        .add(
                                            const CreditNoteApprovalLoadingEvent());
                                    context
                                        .read<CreditNoteApprovalAndRejectBloc>()
                                        .add(
                                          CreditNoteTakeActionEvent(
                                            approve:
                                                DisputeInvoiceApproveInModel(
                                                    nextLevel: isApproval ==
                                                            true
                                                        ? statuslevel.nextLevel
                                                        : '',
                                                    remark: _remarksctrls.text,
                                                    reqId:
                                                        widget.creditNote.cnhId,
                                                    userId: widget.user.usrId ??
                                                        ''),
                                          ),
                                        );
                                  },
                                  child: const Text('Proceed'),
                                ),
                              ],
                            ),
                          );
                          /*  } else {
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
                      creditNoteApprovalLevelFailedState: () {
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
                      creditNoteApprovalLevelLoadingState: () {
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
                  child:
                      BlocBuilder<CreditNoteDetailBloc, CreditNoteDetailState>(
                    builder: (context, state) {
                      return state.when(
                        getCreditNoteDetailState: (details) => details == null
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
                                        enabled: widget.creditNote.status ==
                                                'Pending'
                                            ? true
                                            : false,
                                        decoration: InputDecoration(
                                          hintText: 'Remarks',
                                          hintStyle: kfontstyle(
                                            fontSize: 12.sp,
                                            color: widget.creditNote.status ==
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
                                              color: widget.creditNote.status ==
                                                      'Pending'
                                                  ? Colors.red.shade300
                                                  : Colors.grey[300],
                                              onPressed: () {
                                                if (widget.creditNote.status ==
                                                    'Pending') {
                                                  context
                                                      .read<
                                                          CreditNoteApprovalLevelStatusCubit>()
                                                      .addCreditNoteStatusLoaingEvent();
                                                  context
                                                      .read<
                                                          CreditNoteApprovalLevelStatusCubit>()
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
                                              color: widget.creditNote.status ==
                                                      'Pending'
                                                  ? Colors.green.shade300
                                                  : Colors.grey[300],
                                              onPressed: () {
                                                if (widget.creditNote.status ==
                                                    'Pending') {
                                                  context
                                                      .read<
                                                          CreditNoteApprovalLevelStatusCubit>()
                                                      .addCreditNoteStatusLoaingEvent();
                                                  context
                                                      .read<
                                                          CreditNoteApprovalLevelStatusCubit>()
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
                        creditNoteDetailFailedState: () =>
                            const SizedBox.shrink(),
                      );
                    },
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
