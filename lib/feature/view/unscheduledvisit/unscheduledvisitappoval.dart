import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approvalstatusfilter/approvalfitermodel.dart';
import 'package:customer_connect/feature/data/models/un_scheduled_visit_approve_in_model/un_scheduled_visit_approve_in_model.dart';
import 'package:customer_connect/feature/state/bloc/unscheduledapproval/un_scheduled_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/unscheduledvisit/un_scheduled_visit_header_bloc.dart';
import 'package:customer_connect/feature/state/cubit/unscheduledvisit/un_scheduled_visit_selection_cubit.dart';
import 'package:customer_connect/feature/view/mustsell/mustsellheaderscreen.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UnScheduledVisitScreen extends StatefulWidget {
  const UnScheduledVisitScreen({super.key});

  @override
  State<UnScheduledVisitScreen> createState() => _UnScheduledVisitScreenState();
}

List<ApprovalStatusFilterModel> ddfilterUnScheduled = [
  ApprovalStatusFilterModel(statusName: "Pending Approvals", mode: 'P'),
  ApprovalStatusFilterModel(statusName: "Approved Requests", mode: 'A'),
  ApprovalStatusFilterModel(statusName: "Rejected Requests", mode: 'R'),
  ApprovalStatusFilterModel(statusName: "All Requests", mode: 'AL'),
];
String selectedUnScheduledMode = 'P';
TextEditingController unScheduledHeaderSearchCtrl = TextEditingController();
Timer? debounce;
List<UnScheduledVisitApproveInModel> unScheduledJsonstriongList = [];

class _UnScheduledVisitScreenState extends State<UnScheduledVisitScreen> {
  @override
  void initState() {
    context.read<UnScheduledVisitSelectionCubit>().selectedHeadersList([]);
    unScheduledHeaderSearchCtrl.clear();
    unScheduledJsonstriongList.clear();
    selectedUnScheduledMode = 'P';
    ddfilterUnScheduled = [
      ApprovalStatusFilterModel(
          statusName: selectedLocale?.languageCode == "en"
              ? "Pending Approvals"
              : "الموافقات في انتظار",
          mode: 'P'),
      ApprovalStatusFilterModel(
          statusName: selectedLocale?.languageCode == "en"
              ? "Approved Requests"
              : "الطلبات الموافق عليها",
          mode: 'A'),
      ApprovalStatusFilterModel(
          statusName: selectedLocale?.languageCode == "en"
              ? "Rejected Requests"
              : "تم رفض الطلبات",
          mode: 'R'),
      ApprovalStatusFilterModel(
          statusName: selectedLocale?.languageCode == "en"
              ? "All Requests"
              : "جميع الطلبات",
          mode: 'AL'),
    ];
    context
        .read<UnScheduledVisitHeaderBloc>()
        .add(const ClearUnScheduledVisitEvent());
    context
        .read<UnScheduledVisitHeaderBloc>()
        .add(const GetUnScheduledHeadersEvent(searchQuery: '', mode: 'P'));
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
          AppLocalizations.of(context)!.unscheduledVisit,
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
                controller: unScheduledHeaderSearchCtrl,
                style: kfontstyle(fontSize: 13.sp, color: Colors.black87),
                decoration: InputDecoration(
                  isDense: true,
                  hintText: '${AppLocalizations.of(context)!.searchhere}..',
                  suffix: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: IconButton(
                            onPressed: () {
                              if (unScheduledHeaderSearchCtrl.text.isNotEmpty) {
                                unScheduledHeaderSearchCtrl.clear();
                                context
                                    .read<UnScheduledVisitHeaderBloc>()
                                    .add(const ClearUnScheduledVisitEvent());
                                context.read<UnScheduledVisitHeaderBloc>().add(
                                    const GetUnScheduledHeadersEvent(
                                        searchQuery: '', mode: 'P'));
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
                    context.read<UnScheduledVisitHeaderBloc>().add(
                        GetUnScheduledHeadersEvent(
                            searchQuery: value.trim(),
                            mode: selectedMustSellMode));
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
                value: selectedUnScheduledMode,
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
                items: ddfilterUnScheduled
                    .map(
                      (e) => DropdownMenuItem(
                        value: e.mode,
                        child: Text(e.statusName),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  selectedUnScheduledMode = value!;
                  context
                      .read<UnScheduledVisitHeaderBloc>()
                      .add(const ClearUnScheduledVisitEvent());
                  context.read<UnScheduledVisitHeaderBloc>().add(
                      GetUnScheduledHeadersEvent(
                          searchQuery: unScheduledHeaderSearchCtrl.text,
                          mode: value));
                },
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: BlocBuilder<UnScheduledVisitHeaderBloc,
                UnScheduledVisitHeaderState>(
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      state.when(
                        getUnScheduledVistHeadersState: (headers) =>
                            selectedUnScheduledMode == 'P'
                                ? AppLocalizations.of(context)!.pendingApprovals
                                : selectedUnScheduledMode == 'AL'
                                    ? AppLocalizations.of(context)!.allRequests
                                    : selectedUnScheduledMode == 'A'
                                        ? AppLocalizations.of(context)!
                                            .approvedRequests
                                        : AppLocalizations.of(context)!
                                            .rejectedRequests,
                        unScheduledVisitFailedState: () =>
                            selectedUnScheduledMode == 'P'
                                ? AppLocalizations.of(context)!.pendingApprovals
                                : selectedUnScheduledMode == 'AL'
                                    ? AppLocalizations.of(context)!.allRequests
                                    : selectedUnScheduledMode == 'A'
                                        ? AppLocalizations.of(context)!
                                            .approvedRequests
                                        : AppLocalizations.of(context)!
                                            .rejectedRequests,
                      ),
                      style: countHeading(),
                    ),
                    Text(
                      state.when(
                        getUnScheduledVistHeadersState: (headers) =>
                            headers == null ? "0" : headers.length.toString(),
                        unScheduledVisitFailedState: () => "0",
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
              child: BlocBuilder<UnScheduledVisitHeaderBloc,
                  UnScheduledVisitHeaderState>(
                builder: (context, state) {
                  return state.when(
                    getUnScheduledVistHeadersState: (headers) => headers == null
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
                                shrinkWrap: true,
                                // physics: const NeverScrollableScrollPhysics(),
                                itemBuilder:
                                    (context, index) => GestureDetector(
                                          onTap: () {
                                            /*      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MustSellDetailScreen(
                                                    user: widget.user,
                                                    header: headers[index],
                                                  )),
                                        ); */
                                          },
                                          child: Row(
                                            children: [
                                              Container(
                                                height: 50.h,
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
                                                          Row(
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  '${headers[index].rotCode} - ${headers[index].rotName} ${AppLocalizations.of(context)!.route}',
                                                                  style: kfontstyle(
                                                                      fontSize:
                                                                          12.sp,
                                                                      color: const Color(
                                                                          0xff413434)),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          /* Row(
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              '${headers[index].cusCode} - ${selectedLocale?.languageCode == 'en'?headers[index].cusName:headers[index].cusArName??''}',
                                                              style: kfontstyle(
                                                                  fontSize:
                                                                      12.sp,
                                                                  color: const Color(
                                                                      0xff413434)),
                                                            ),
                                                          ),
                                                        ],
                                                      ), */
                                                          RichText(
                                                            text: TextSpan(
                                                                style: DefaultTextStyle.of(
                                                                        context)
                                                                    .style
                                                                    .copyWith(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      decoration:
                                                                          TextDecoration
                                                                              .none,
                                                                    ),
                                                                children: [
                                                                  TextSpan(
                                                                    text:
                                                                        '${headers[index].cusCode} - ',
                                                                    style: kfontstyle(
                                                                        fontSize: 12
                                                                            .sp,
                                                                        color: const Color(
                                                                            0xff413434)),
                                                                  ),
                                                                  TextSpan(
                                                                    text: selectedLocale?.languageCode ==
                                                                            'en'
                                                                        ? "${headers[index].cusName}"
                                                                        : headers[index].cusArName ??
                                                                            '',
                                                                    style: kfontstyle(
                                                                        fontSize: 12
                                                                            .sp,
                                                                        color: const Color(
                                                                            0xff413434)),
                                                                  )
                                                                ]),
                                                          ),
                                                          Text(
                                                            headers[index]
                                                                    .createdDate ??
                                                                '',
                                                            style: kfontstyle(
                                                                fontSize: 10.sp,
                                                                color: Colors
                                                                    .grey),
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
                                                            color: Colors
                                                                .grey[300],
                                                            thickness: 1,
                                                          ),
                                                          BlocBuilder<
                                                              UnScheduledVisitSelectionCubit,
                                                              UnScheduledVisitSelectionState>(
                                                            builder: (context,
                                                                state) {
                                                              return state.when(
                                                                unSchedledSelectedItemsState:
                                                                    (selected) =>
                                                                        Checkbox(
                                                                  value: unScheduledJsonstriongList
                                                                      .where((element) =>
                                                                          element
                                                                              .uvaId ==
                                                                          headers[index]
                                                                              .uvaId)
                                                                      .isNotEmpty,
                                                                  side: BorderSide(
                                                                      color: Colors
                                                                              .grey[
                                                                          500]!),
                                                                  shape: RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              4)),
                                                                  activeColor:
                                                                      Colors
                                                                          .green
                                                                          .shade300,
                                                                  onChanged:
                                                                      (value) {
                                                                    if (unScheduledJsonstriongList
                                                                        .where((element) =>
                                                                            element.uvaId ==
                                                                            headers[index].uvaId)
                                                                        .isEmpty) {
                                                                      unScheduledJsonstriongList
                                                                          .add(
                                                                              UnScheduledVisitApproveInModel(
                                                                        uvaId: headers[index]
                                                                            .uvaId,
                                                                      ));
                                                                    } else {
                                                                      unScheduledJsonstriongList.removeWhere((element) =>
                                                                          element
                                                                              .uvaId ==
                                                                          headers[index]
                                                                              .uvaId);
                                                                    }
                                                                    setState(
                                                                        () {});
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
                    unScheduledVisitFailedState: () => Center(
                      child: Text(
                        AppLocalizations.of(context)!.noDataAvailable,
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
      bottomNavigationBar: unScheduledJsonstriongList.isEmpty ||
              selectedUnScheduledMode != 'P'
          ? null
          : BlocConsumer<UnScheduledApprovalBloc, UnScheduledApprovalState>(
              listener: (context, state) {
                state.when(
                  approveUnScheduledVisitState: (resp) {
                    if (resp != null) {
                      unScheduledHeaderSearchCtrl.clear();
                      unScheduledHeaderSearchCtrl.clear();
                      unScheduledJsonstriongList.clear();
                      context
                          .read<UnScheduledVisitHeaderBloc>()
                          .add(const ClearUnScheduledVisitEvent());
                      context.read<UnScheduledVisitHeaderBloc>().add(
                          GetUnScheduledHeadersEvent(
                              searchQuery: '', mode: selectedUnScheduledMode));
                      Navigator.pop(context);
                      showCupertinoDialog(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                          title: Text(AppLocalizations.of(context)!.alert),
                          content: Text(
                              "${AppLocalizations.of(context)!.unschedVisitApproval} ${resp.descr ?? ''}"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(AppLocalizations.of(context)!.ok),
                            ),
                          ],
                        ),
                      );
                      setState(() {});
                    }
                  },
                  rejectUnScheduledVisitState: (resp) {
                    if (resp != null) {
                      unScheduledHeaderSearchCtrl.clear();
                      unScheduledJsonstriongList.clear();
                      context
                          .read<UnScheduledVisitHeaderBloc>()
                          .add(const ClearUnScheduledVisitEvent());
                      context.read<UnScheduledVisitHeaderBloc>().add(
                          GetUnScheduledHeadersEvent(
                              searchQuery: '', mode: selectedUnScheduledMode));
                      Navigator.pop(context);
                      showCupertinoDialog(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                          title: Text(AppLocalizations.of(context)!.alert),
                          content: Text(
                              "${AppLocalizations.of(context)!.unscheduledVisitRejection} ${resp.descr ?? ''}"),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(AppLocalizations.of(context)!.ok),
                            ),
                          ],
                        ),
                      );
                      setState(() {});
                    }
                  },
                  unScheduledVisitApprovalFailedState: () {
                    Navigator.pop(context);
                    showCupertinoDialog(
                      context: context,
                      builder: (context) => CupertinoAlertDialog(
                        title: Text(AppLocalizations.of(context)!.alert),
                        content: Text(
                            AppLocalizations.of(context)!.somethingWentWrong),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(AppLocalizations.of(context)!.ok),
                          ),
                        ],
                      ),
                    );
                  },
                  unScheduledApprovalLoadingEvent: () {
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
                                color: selectedUnScheduledMode == 'P'
                                    ? Colors.red.shade300
                                    : Colors.grey[300],
                                onPressed: () {
                                  if (selectedUnScheduledMode == 'P') {
                                    showCupertinoDialog(
                                      context: context,
                                      builder: (context) =>
                                          CupertinoAlertDialog(
                                        title: Text(
                                            AppLocalizations.of(context)!
                                                .alert),
                                        content: Text(
                                            AppLocalizations.of(context)!
                                                .doyouWantToProceed),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              setState(() {});
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                                AppLocalizations.of(context)!
                                                    .cancel),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);

                                              context
                                                  .read<
                                                      UnScheduledApprovalBloc>()
                                                  .add(
                                                      const UnScheuledLoadingEvent());

                                              context
                                                  .read<
                                                      UnScheduledApprovalBloc>()
                                                  .add(
                                                    ApproveUnScheduledVisitEvent(
                                                      approve:
                                                          unScheduledJsonstriongList,
                                                    ),
                                                  );
                                            },
                                            child: Text(
                                                AppLocalizations.of(context)!
                                                    .proceed),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                },
                                child: Text(
                                  AppLocalizations.of(context)!.rejectSelected,
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
                                color: selectedUnScheduledMode == 'P'
                                    ? Colors.green.shade300
                                    : Colors.grey[300],
                                onPressed: () {
                                  if (selectedUnScheduledMode == 'P') {
                                    showCupertinoDialog(
                                      context: context,
                                      builder: (context) =>
                                          CupertinoAlertDialog(
                                        title: Text(
                                            AppLocalizations.of(context)!
                                                .alert),
                                        content: Text(
                                            AppLocalizations.of(context)!
                                                .doyouWantToProceed),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              setState(() {});
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                                AppLocalizations.of(context)!
                                                    .cancel),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                              // Navigator.pop(context);

                                              context
                                                  .read<
                                                      UnScheduledApprovalBloc>()
                                                  .add(
                                                      const UnScheuledLoadingEvent());

                                              context
                                                  .read<
                                                      UnScheduledApprovalBloc>()
                                                  .add(
                                                    ApproveUnScheduledVisitEvent(
                                                      approve:
                                                          unScheduledJsonstriongList,
                                                    ),
                                                  );
                                            },
                                            child: Text(
                                                AppLocalizations.of(context)!
                                                    .proceed),
                                          ),
                                        ],
                                      ),
                                    );
                                  }
                                },
                                child: Text(
                                  AppLocalizations.of(context)!.approveSelected,
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
