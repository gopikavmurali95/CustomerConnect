import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approvalstatusfilter/approvalfitermodel.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart';
import 'package:customer_connect/feature/state/bloc/creditnoteheader/credit_note_header_bloc.dart';
import 'package:customer_connect/feature/view/creditnote/creditnotedetailscreen.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreditNoteHeaderScreen extends StatefulWidget {
  final LoginUserModel user;
  const CreditNoteHeaderScreen({super.key, required this.user});

  @override
  State<CreditNoteHeaderScreen> createState() => _CreditNoteHeaderScreenState();
}

List<ApprovalStatusFilterModel> ddfilterFieldscreditNote = [
  ApprovalStatusFilterModel(statusName: "Pending", mode: 'P'),
  ApprovalStatusFilterModel(statusName: "Action taken", mode: 'AT'),
  ApprovalStatusFilterModel(statusName: "Approved", mode: 'A'),
  ApprovalStatusFilterModel(statusName: "Rejected", mode: 'R'),
];
TextEditingController _creditNoteHSearch = TextEditingController();
Timer? debounce;
String _selectedMode = 'P';

class _CreditNoteHeaderScreenState extends State<CreditNoteHeaderScreen> {
  @override
  void initState() {
    context
        .read<CreditNoteHeaderBloc>()
        .add(const ClearCreditNoteHeadersEvent());
    context.read<CreditNoteHeaderBloc>().add(GetAllCreditNoteHeadersEvent(
        userId: widget.user.usrId ?? '', mode: 'P', searchQuery: ''));
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
          "Credit note",
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
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Card(
                child: Container(
                  height: 30.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: .5,
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    controller: _creditNoteHSearch,
                    style: kfontstyle(fontSize: 10.sp, color: Colors.black87),
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: 'Search here..',
                      suffix: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: IconButton(
                                onPressed: () {
                                  if (_creditNoteHSearch.text.isNotEmpty) {
                                    _creditNoteHSearch.clear();

                                    context.read<CreditNoteHeaderBloc>().add(
                                        GetAllCreditNoteHeadersEvent(
                                            userId: widget.user.usrId ?? '',
                                            mode: _selectedMode,
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
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                    ),
                    onChanged: (value) {
                      debounce = Timer(
                          const Duration(
                            milliseconds: 500,
                          ), () async {
                        context.read<CreditNoteHeaderBloc>().add(
                            GetAllCreditNoteHeadersEvent(
                                userId: widget.user.usrId ?? '',
                                mode: _selectedMode,
                                searchQuery: value.trim()));
                      });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Card(
                child: Container(
                  height: 30.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: .5,
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButtonFormField(
                    elevation: 0,
                    value: ddfilterFieldscreditNote[0].mode,
                    dropdownColor: Colors.white,
                    style: kfontstyle(fontSize: 10.sp, color: Colors.black87),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
                      border: /* InputBorder
                                .none  */
                          OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.transparent),
                      ),
                    ),
                    items: ddfilterFieldscreditNote
                        .map(
                          (e) => DropdownMenuItem(
                            value: e.mode,
                            child: Text(e.statusName),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      _selectedMode = value!;
                      context
                          .read<CreditNoteHeaderBloc>()
                          .add(const ClearCreditNoteHeadersEvent());
                      context.read<CreditNoteHeaderBloc>().add(
                          GetAllCreditNoteHeadersEvent(
                              userId: widget.user.usrId ?? '',
                              mode: _selectedMode,
                              searchQuery: ''));
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pending Approvals",
                    style: countHeading(),
                  ),
                  BlocBuilder<CreditNoteHeaderBloc, CreditNoteHeaderState>(
                    builder: (context, state) {
                      return Text(
                        state.when(
                          getCreditNoteHeadersState: (headers) =>
                              headers == null ? "0" : headers.length.toString(),
                          creditNoteHeaderFailedState: () => "0",
                        ),
                        style: countHeading(),
                      );
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: BlocBuilder<CreditNoteHeaderBloc, CreditNoteHeaderState>(
                builder: (context, state) {
                  return state.when(
                    getCreditNoteHeadersState: (headers) => headers == null
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
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                CreditNoteDetailScreen(
                                              creditNote: headers[index],
                                              user: widget.user,
                                              currentMode: _selectedMode,
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
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        headers[index]
                                                                .cnhNumber ??
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
                                                                .createdDate ??
                                                            '',
                                                        style: kfontstyle(
                                                            fontSize: 10.sp,
                                                            color: Colors.grey),
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
                                                                'Action Taken'
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
                                separatorBuilder: (context, index) => Divider(
                                      color: Colors.grey[300],
                                    ),
                                itemCount: headers.length),
                    creditNoteHeaderFailedState: () => Center(
                      child: Text(
                        'No Data Available',
                        style: kfontstyle(),
                      ),
                    ),
                  );
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
