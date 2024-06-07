import 'dart:async';
import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approvalstatusfilter/approvalfitermodel.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart';
import 'package:customer_connect/feature/state/bloc/disputenoteheader/dispute_note_header_bloc.dart';
import 'package:customer_connect/feature/state/cubit/navigatetoback/navigateto_back_cubit.dart';
import 'package:customer_connect/feature/state/cubit/progressIndicator/progress_indicator_cubit.dart';
import 'package:customer_connect/feature/view/disputenote/disputenotedetailscreen.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DisputeNoteApprovalHEaderScreen extends StatefulWidget {
  final LoginUserModel user;
  const DisputeNoteApprovalHEaderScreen({super.key, required this.user});

  @override
  State<DisputeNoteApprovalHEaderScreen> createState() =>
      _DisputeNoteApprovalHEaderScreenState();
}

List<ApprovalStatusFilterModel> ddfilterFieldsDisputeNote = [
  ApprovalStatusFilterModel(statusName: "Pending", mode: 'P'),
  ApprovalStatusFilterModel(statusName: "Approved", mode: 'AT'),
  ApprovalStatusFilterModel(statusName: "Rejected", mode: 'R'),
];

String _selectedDisputeMode = 'P';
TextEditingController _disputeHeaderSearchCtrl = TextEditingController();
Timer? debounce;

class _DisputeNoteApprovalHEaderScreenState
    extends State<DisputeNoteApprovalHEaderScreen> {
  @override
  void initState() {
    context.read<ProgressIndicatorCubit>().removeProgressIndicator();
    context
        .read<DisputeNoteHeaderBloc>()
        .add(const ClearDisputeNoteHEaderEvent());

    context.read<DisputeNoteHeaderBloc>().add(GetDisputeNoteHeadersEvent(
        userID: widget.user.usrId ?? '', mode: 'P', searchQuery: ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log(isLoadingProgress.toString());
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
          "Dispute request",
          style: appHeading(),
        ),
      ),
      body: PopScope(
        onPopInvoked: (didPop) {
          context
              .read<ApprovalCountsBloc>()
              .add(GetApprovalsCountEvent(userID: widget.user.usrId ?? ''));
        },
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 30.h,
                child: TextFormField(
                  controller: _disputeHeaderSearchCtrl,
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
                                if (_disputeHeaderSearchCtrl.text.isNotEmpty) {
                                  _disputeHeaderSearchCtrl.clear();

                                  context.read<DisputeNoteHeaderBloc>().add(
                                      GetDisputeNoteHeadersEvent(
                                          userID: widget.user.usrId ?? '',
                                          mode: _selectedDisputeMode,
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
                      context.read<DisputeNoteHeaderBloc>().add(
                            GetDisputeNoteHeadersEvent(
                                userID: widget.user.usrId ?? '',
                                mode: _selectedDisputeMode,
                                searchQuery: value),
                          );
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: SizedBox(
                height: 30.h,
                width: MediaQuery.of(context).size.width - 20,
                child: DropdownButtonFormField(
                  elevation: 0,
                  value: ddfilterFieldsDisputeNote[0].mode,
                  dropdownColor: Colors.white,
                  style: kfontstyle(fontSize: 10.sp, color: Colors.black87),
                  decoration: InputDecoration(
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
                  items: ddfilterFieldsDisputeNote
                      .map(
                        (e) => DropdownMenuItem(
                          value: e.mode,
                          child: Text(e.statusName),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    _selectedDisputeMode = value!;
                    context
                        .read<DisputeNoteHeaderBloc>()
                        .add(const ClearDisputeNoteHEaderEvent());

                    context.read<DisputeNoteHeaderBloc>().add(
                          GetDisputeNoteHeadersEvent(
                              userID: widget.user.usrId ?? '',
                              mode: value,
                              searchQuery: ''),
                        );
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: BlocBuilder<DisputeNoteHeaderBloc, DisputeNoteHeaderState>(
                builder: (context, state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        state.when(
                          getDisputeNoteHeaderState: (headers) =>
                              _selectedDisputeMode == "P"
                                  ? "Pending Approvals"
                                  : _selectedDisputeMode == "AT"
                                      ? "Approved Requests"
                                      : "Rejected Requests",
                          disputeNoteHeaderFailedState: () =>
                              _selectedDisputeMode == "P"
                                  ? "Pending Approvals"
                                  : _selectedDisputeMode == "AT"
                                      ? "Approved Requests"
                                      : "Rejected Requests",
                        ),
                        style: countHeading(),
                      ),
                      Text(
                        state.when(
                          getDisputeNoteHeaderState: (headers) =>
                              headers == null ? "0" : headers.length.toString(),
                          disputeNoteHeaderFailedState: () => "0",
                        ),
                        style: countHeading(),
                      )
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child:
                  BlocListener<DisputeNoteHeaderBloc, DisputeNoteHeaderState>(
                listener: (context, state) {
                  state.when(
                    getDisputeNoteHeaderState: (headers) {
                      if (headers != null && isLoadingProgress == true) {
                        Navigator.pop(context);
                      }
                    },
                    disputeNoteHeaderFailedState: () {},
                  );
                },
                child:
                    BlocBuilder<DisputeNoteHeaderBloc, DisputeNoteHeaderState>(
                  builder: (context, state) {
                    return state.when(
                      getDisputeNoteHeaderState: (headers) => headers == null
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 0),
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
                          : headers.isEmpty
                              ? Center(
                                  child: Text(
                                    'No Data Available',
                                    style: kfontstyle(),
                                  ),
                                )
                              : ListView.separated(
                                  itemBuilder: (context, index) =>
                                      GestureDetector(
                                        onTap: () {
                                          context
                                              .read<NavigatetoBackCubit>()
                                              .popFromScreen(false);
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  DisputeNoteDetailScreen(
                                                disputenote: headers[index],
                                                user: widget.user,
                                                currentMode:
                                                    _selectedDisputeMode,
                                              ),
                                            ),
                                          );
                                        },
                                        child: Row(
                                          children: [
                                            Container(
                                              height: 50,
                                              width: 10,
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0xfffee8e0),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
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
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          headers[index]
                                                                  .drhTransId ??
                                                              '',
                                                          style: kfontstyle(
                                                            fontSize: 12.sp,
                                                            color: const Color(
                                                                0xff2C6B9E),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              '${headers[index].cusCode} - ',
                                                              style: kfontstyle(
                                                                fontSize: 11.sp,
                                                                color: const Color(
                                                                    0xff2C6B9E),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                headers[index]
                                                                        .cusName ??
                                                                    '',
                                                                style: kfontstyle(
                                                                    fontSize:
                                                                        12.sp,
                                                                    color: const Color(
                                                                        0xff413434)),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Text(
                                                          headers[index]
                                                                  .transTime ??
                                                              '',
                                                          style: kfontstyle(
                                                              fontSize: 10.sp,
                                                              color:
                                                                  Colors.grey),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      color: headers[index]
                                                                  .status!
                                                                  .isEmpty ||
                                                              headers[index]
                                                                      .status !=
                                                                  'Approved'
                                                          ? headers[index]
                                                                      .status ==
                                                                  'Rejected'
                                                              ? Colors.red[300]
                                                              : const Color(
                                                                  0xfff7f4e2)
                                                          : const Color(
                                                              0xffe3f7e2),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        20,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 8,
                                                          vertical: 5),
                                                      child: Text(
                                                        headers[index].status ??
                                                            '',
                                                        style: kfontstyle(
                                                            fontSize: 10.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: headers[index]
                                                                        .status ==
                                                                    'Rejected'
                                                                ? Colors.white54
                                                                : Colors
                                                                    .black54),
                                                      ),
                                                    ),
                                                  )
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
                      disputeNoteHeaderFailedState: () => Center(
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
      ),
    );
  }
}
