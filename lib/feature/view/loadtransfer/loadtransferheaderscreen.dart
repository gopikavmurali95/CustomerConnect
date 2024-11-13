import 'dart:async';
import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approvalstatusfilter/approvalfitermodel.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart';
import 'package:customer_connect/feature/state/bloc/loadtransferheader/load_transfer_header_bloc.dart';
import 'package:customer_connect/feature/view/loadtransfer/loadtransferdetailscreen.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoadTransferApprovalHeaderScreen extends StatefulWidget {
  final LoginUserModel user;
  const LoadTransferApprovalHeaderScreen({super.key, required this.user});

  @override
  State<LoadTransferApprovalHeaderScreen> createState() =>
      _LoadTransferApprovalHeaderScreenState();
}

Timer? debounce;
TextEditingController vanLoadTransSearchCtrl = TextEditingController();
String _selectedMode = 'N';
List<ApprovalStatusFilterModel> ddfilterLoadTransfer = [
  ApprovalStatusFilterModel(statusName: "Pending", mode: 'N'),
  ApprovalStatusFilterModel(statusName: "Action Taken", mode: 'A'),
];

class _LoadTransferApprovalHeaderScreenState
    extends State<LoadTransferApprovalHeaderScreen> {
  @override
  void initState() {
    vanLoadTransSearchCtrl.clear();
    ddfilterLoadTransfer = [
      ApprovalStatusFilterModel(
          statusName: selectedLocale?.languageCode == 'en'
              ? "Pending Requests"
              : "قيد الانتظار",
          mode: 'N'),
      ApprovalStatusFilterModel(
          statusName: selectedLocale?.languageCode == 'en'
              ? "Action Taken Requests"
              : "طلبات الإجراءات المتخذة",
          mode: 'A'),
    ];

    context
        .read<LoadTransferHeaderBloc>()
        .add(const ClearLoadtransferHeaderEvent());
    context.read<LoadTransferHeaderBloc>().add(GetAllLoadTransferHeadersEvent(
        userID: widget.user.usrId ?? '', mode: "N", searchQuery: ""));

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
          AppLocalizations.of(context)!.load_transfer,
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
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  controller: vanLoadTransSearchCtrl,
                  style: kfontstyle(fontSize: 13.sp, color: Colors.black87),
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: AppLocalizations.of(context)!.searchhere,
                    suffix: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: IconButton(
                              onPressed: () {
                                if (vanLoadTransSearchCtrl.text.isNotEmpty) {
                                  vanLoadTransSearchCtrl.clear();
                                  context.read<LoadTransferHeaderBloc>().add(
                                      const ClearLoadtransferHeaderEvent());
                                  context.read<LoadTransferHeaderBloc>().add(
                                      GetAllLoadTransferHeadersEvent(
                                          userID: widget.user.usrId ?? '',
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
                      context.read<LoadTransferHeaderBloc>().add(
                          GetAllLoadTransferHeadersEvent(
                              userID: widget.user.usrId ?? '',
                              mode: _selectedMode,
                              searchQuery: value.trim()));
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 30.h,
                width: MediaQuery.of(context).size.width,
                child: DropdownButtonFormField(
                  elevation: 0,
                  value: ddfilterLoadTransfer[0].mode,
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
                  items: ddfilterLoadTransfer
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
                        .read<LoadTransferHeaderBloc>()
                        .add(const ClearLoadtransferHeaderEvent());
                    context.read<LoadTransferHeaderBloc>().add(
                        GetAllLoadTransferHeadersEvent(
                            userID: widget.user.usrId ?? '',
                            mode: value,
                            searchQuery: ""));
                  },
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
                    AppLocalizations.of(context)!.pendingApprovals,
                    style: countHeading(),
                  ),
                  BlocBuilder<LoadTransferHeaderBloc, LoadTransferHeaderState>(
                    builder: (context, state) {
                      return Text(
                        state.when(
                          getAllLoadTransferHeadersState: (headers) =>
                              headers == null ? "0" : headers.length.toString(),
                          loadTransferHeaderFailedState: () => "0",
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
              child:
                  BlocBuilder<LoadTransferHeaderBloc, LoadTransferHeaderState>(
                builder: (context, state) {
                  return state.when(
                    getAllLoadTransferHeadersState: (headers) => headers == null
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
                                  AppLocalizations.of(context)!.noDataAvailable,
                                  style: kfontstyle(),
                                ),
                              )
                            : ListView.separated(
                                itemBuilder: (context, index) =>
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,Platform.isIOS?CupertinoPageRoute(builder: (context)=>
                                          LoadTransferDetailScreen(
                                            user: widget.user, 
                                            header: headers[index],
                                     currentMode: _selectedMode)):
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                LoadTransferDetailScreen(
                                              header: headers[index],
                                              user: widget.user,
                                              currentMode: _selectedMode,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 70,
                                            width: 10,
                                            decoration: BoxDecoration(
                                              color: const Color(0xfffee8e0),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
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
                                                                .ltrReqNo ??
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
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            "${headers[index].rotName} - ",
                                                            style: kfontstyle(
                                                                fontSize: 12.sp,
                                                                color: const Color(
                                                                    0xff2C6B9E)),
                                                          ),
                                                          Expanded(
                                                            child: Text(
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              selectedLocale
                                                                          ?.languageCode ==
                                                                      "en"
                                                                  ? headers[index]
                                                                          .usrName ??
                                                                      ''
                                                                  : headers[index]
                                                                          .usrArName ??
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
                                                                .ltrApprovalStatus!
                                                                .isEmpty ||
                                                            headers[index]
                                                                    .ltrApprovalStatus ==
                                                                'Pending'
                                                        ? const Color(
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
                                                      selectedLocale
                                                                  ?.languageCode ==
                                                              "en"
                                                          ? headers[index]
                                                                  .ltrApprovalStatus ??
                                                              ''
                                                          : headers[index]
                                                                  .ltrArApprovalStatus ??
                                                              '',
                                                      style: kfontstyle(
                                                          fontSize: 10.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: headers[index]
                                                                      .ltrApprovalStatus ==
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
                    loadTransferHeaderFailedState: () => Center(
                      child: Text(
                        AppLocalizations.of(context)!.noDataAvailable,
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
