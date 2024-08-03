import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approvalstatusfilter/approvalfitermodel.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/must_sell_approve_in_model/must_sell_approve_in_model.dart';
import 'package:customer_connect/feature/data/models/must_sell_i_json_model/must_sell_i_json_model.dart';
import 'package:customer_connect/feature/state/bloc/mustsellapprove/must_sell_approve_bloc.dart';
import 'package:customer_connect/feature/state/bloc/mustsellheader/must_sell_header_bloc.dart';
import 'package:customer_connect/feature/state/cubit/mustsellselectedheader/mustsell_approval_selection_cubit.dart';
import 'package:customer_connect/feature/view/mustsell/mustselldetailscreen.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MustSellHeaderScreen extends StatefulWidget {
  final LoginUserModel user;
  const MustSellHeaderScreen({super.key, required this.user});

  @override
  State<MustSellHeaderScreen> createState() => _MustSellHeaderScreenState();
}

List<ApprovalStatusFilterModel> ddfilterMustSell = [
  ApprovalStatusFilterModel(statusName: "Pending Approvals", mode: 'P'),
  ApprovalStatusFilterModel(statusName: "Approved", mode: 'A'),
  ApprovalStatusFilterModel(statusName: "Rejected", mode: 'R'),
  ApprovalStatusFilterModel(statusName: "Action Taken ", mode: 'AT'),
]; /* Pending- P
Action Taken -AT
Approved- A
Rejected -R */
TextEditingController mustSellHeaderSearchCtrl = TextEditingController();
Timer? debounce;
String selectedMustSellMode = 'P';
List<MustSellIJsonModel> mustSellJsonstriongList = [];

class _MustSellHeaderScreenState extends State<MustSellHeaderScreen> {
  @override
  void initState() {
    selectedMustSellMode = 'P';
    mustSellHeaderSearchCtrl.clear();

    context.read<MustSellHeaderBloc>().add(const ClearMustSellHeadersEvent());
    context
        .read<MustSellHeaderBloc>()
        .add(const GetMustSellHeadersEvent(mode: "P", searchQuery: ""));
    mustSellJsonstriongList.clear();
    context.read<MustsellApprovalSelectionCubit>().selectedHeadersList([]);

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
          "Must Sell",
          style: appHeading(),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 30.h,
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                controller: mustSellHeaderSearchCtrl,
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
                              if (mustSellHeaderSearchCtrl.text.isNotEmpty) {
                                mustSellHeaderSearchCtrl.clear();
                                context
                                    .read<MustSellHeaderBloc>()
                                    .add(const ClearMustSellHeadersEvent());
                                context.read<MustSellHeaderBloc>().add(
                                    GetMustSellHeadersEvent(
                                        mode: selectedMustSellMode,
                                        searchQuery: ""));
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
                      ), () 
                      async {
                    context.read<MustSellHeaderBloc>().add(
                        GetMustSellHeadersEvent(
                            mode: selectedMustSellMode,
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
                value: selectedMustSellMode,
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
                items: ddfilterMustSell
                    .map(
                      (e) => DropdownMenuItem(
                        value: e.mode,
                        child: Text(e.statusName),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  selectedMustSellMode = value!;
                  context
                      .read<MustSellHeaderBloc>()
                      .add(const ClearMustSellHeadersEvent());
                  context.read<MustSellHeaderBloc>().add(
                      GetMustSellHeadersEvent(
                          mode: value,
                          searchQuery: mustSellHeaderSearchCtrl.text));
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
                  "Pending Approvals",
                  style: countHeading(),
                ),
                BlocBuilder<MustSellHeaderBloc, MustSellHeaderState>(
                  builder: (context, state) {
                    return Text(
                      state.when(
                        getMustsellHeadersState: (headers) =>
                            headers == null ? "0" : headers.length.toString(),
                        mustSellHeadersFailedState: () => "0",
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
              child: BlocBuilder<MustSellHeaderBloc, MustSellHeaderState>(
                builder: (context, state) {
                  return state.when(
                    getMustsellHeadersState: (headers) => headers == null
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
                                shrinkWrap: true,
                                // physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) =>
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MustSellDetailScreen(
                                                    user: widget.user,
                                                    header: headers[index],
                                                  )),
                                        );
                                      },
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 50.h,
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
                                                        '${headers[index].msaTransId} | ${headers[index].type}',
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
                                                          Expanded(
                                                            child: Text(
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              '${headers[index].rotCode} - ${headers[index].rotName} route',
                                                              style: kfontstyle(
                                                                  fontSize:
                                                                      12.sp,
                                                                  color: const Color(
                                                                      0xff413434)),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              '${headers[index].cuscode} - ${headers[index].cusname}',
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
                                              ],
                                            ),
                                          ),
                                          headers[index].status != 'Pending'
                                              ? const SizedBox.shrink()
                                              : IntrinsicHeight(
                                                  child: Row(
                                                    children: [
                                                      VerticalDivider(
                                                        color: Colors.grey[300],
                                                        thickness: 1,
                                                      ),
                                                      BlocBuilder<
                                                          MustsellApprovalSelectionCubit,
                                                          MustsellApprovalSelectionState>(
                                                        builder:
                                                            (context, state) {
                                                          return state.when(
                                                            mustSellApprovalSelectedHeadersState:
                                                                (selected) =>
                                                                    Checkbox(
                                                              value: mustSellJsonstriongList
                                                                  .where((element) =>
                                                                      element
                                                                          .msaId ==
                                                                      headers[index]
                                                                          .msaId)
                                                                  .isNotEmpty,
                                                              side: BorderSide(
                                                                  color: Colors
                                                                          .grey[
                                                                      500]!),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4)),
                                                              activeColor:
                                                                  Colors.green
                                                                      .shade300,
                                                              onChanged:
                                                                  (value) {
                                                                if (mustSellJsonstriongList
                                                                    .where((element) =>
                                                                        element
                                                                            .msaId ==
                                                                        headers[index]
                                                                            .msaId)
                                                                    .isEmpty) {
                                                                  mustSellJsonstriongList.add(MustSellIJsonModel(
                                                                      msaId: headers[
                                                                              index]
                                                                          .msaId,
                                                                      status:
                                                                          ''));
                                                                } else {
                                                                  mustSellJsonstriongList.removeWhere((element) =>
                                                                      element
                                                                          .msaId ==
                                                                      headers[index]
                                                                          .msaId);
                                                                }
                                                                setState(() {});
                                                                log(jsonEncode(
                                                                    mustSellJsonstriongList));
                                                              },
                                                            ),
                                                          );
                                                        },
                                                      )
                                                    ],
                                                  ),
                                                )
                                        ],
                                      ),
                                    ),
                                separatorBuilder: (context, index) => Divider(
                                      color: Colors.grey[300],
                                    ),
                                itemCount: headers.length),
                    mustSellHeadersFailedState: () => Center(
                      child: Text(
                        'No Data Available',
                        style: kfontstyle(),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: mustSellJsonstriongList.isEmpty ||
              selectedMustSellMode != 'P'
          ? null
          : BlocConsumer<MustSellApproveBloc, MustSellApproveState>(
              listener: (context, state) {
                state.when(
                  mustSellApproveStatusState: (resp) {
                    if (resp != null) {
                      mustSellHeaderSearchCtrl.clear();
                      context
                          .read<MustSellHeaderBloc>()
                          .add(const ClearMustSellHeadersEvent());
                      context.read<MustSellHeaderBloc>().add(
                          GetMustSellHeadersEvent(
                              mode: selectedMustSellMode, searchQuery: ""));
                      mustSellJsonstriongList.clear();
                      context
                          .read<MustsellApprovalSelectionCubit>()
                          .selectedHeadersList([]);
                      Navigator.pop(context);
                      showCupertinoDialog(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                          title: const Text('Alert'),
                          content:
                              Text("Must sell approval ${resp.status ?? ''}"),
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
                  mustSellApproveFailedState: () {
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
                  mustSellApproveLoadingEvent: () {
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
                  height: 42.h,
                  width: double.infinity,
                  child: Column(
                    children: [
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
                                color: selectedMustSellMode == 'P'
                                    ? Colors.red.shade300
                                    : Colors.grey[300],
                                onPressed: () {
                                  if (selectedMustSellMode == 'P') {
                                    showCupertinoDialog(
                                      context: context,
                                      builder: (context) =>
                                          CupertinoAlertDialog(
                                        title: const Text('Alert'),
                                        content: const Text(
                                            "Do you Want to Proceed"),
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
                                              Navigator.pop(context);

                                              context
                                                  .read<MustSellApproveBloc>()
                                                  .add(
                                                      const MustSellLoadingEvent());
                                              for (var item
                                                  in mustSellJsonstriongList) {
                                                item.status = 'R';
                                              }
                                              context
                                                  .read<MustSellApproveBloc>()
                                                  .add(
                                                    ApproveMustSellEvent(
                                                      approve:
                                                          MustSellApproveInModel(
                                                              jsonString:
                                                                  mustSellJsonstriongList,
                                                              transId: '',
                                                              userId: widget
                                                                  .user.usrId),
                                                    ),
                                                  );
                                            },
                                            child: const Text('Proceed'),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                },
                                child: Text(
                                  'Reject Selected',
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
                                color: selectedMustSellMode == 'P'
                                    ? Colors.green.shade300
                                    : Colors.grey[300],
                                onPressed: () {
                                  if (selectedMustSellMode == 'P') {
                                    showCupertinoDialog(
                                      context: context,
                                      builder: (context) =>
                                          CupertinoAlertDialog(
                                        title: const Text('Alert'),
                                        content: const Text(
                                            "Do you Want to Proceed"),
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
                                              Navigator.pop(context);
                                              context
                                                  .read<MustSellApproveBloc>()
                                                  .add(
                                                      const MustSellLoadingEvent());
                                              for (var item
                                                  in mustSellJsonstriongList) {
                                                item.status = 'A';
                                              }
                                              context
                                                  .read<MustSellApproveBloc>()
                                                  .add(
                                                    ApproveMustSellEvent(
                                                      approve:
                                                          MustSellApproveInModel(
                                                              jsonString:
                                                                  mustSellJsonstriongList,
                                                              transId: '',
                                                              userId: widget
                                                                  .user.usrId),
                                                    ),
                                                  );
                                            },
                                            child: const Text('Proceed'),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                },
                                child: Text(
                                  'Approve Selected',
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
    );
  }
}
