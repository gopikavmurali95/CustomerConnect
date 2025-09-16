// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/journey_plan_approval_in_model/journey_plan_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart';
import 'package:customer_connect/feature/state/bloc/journeyplanapproval/jourey_plan_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/journeyplanheader/journey_plan_header_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:customer_connect/main.dart';
// import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/approvalstatusfilter/approvalfitermodel.dart';
import '../../data/models/journey_plan_header_model/journey_plan_header_model.dart';

class JourneyPlanHeaderScreen extends StatefulWidget {
  final LoginUserModel user;
  const JourneyPlanHeaderScreen({super.key, required this.user});

  @override
  State<JourneyPlanHeaderScreen> createState() =>
      _JourneyPlanHeaderScreenState();
}

List<bool?> statuslist = [];
int loadingCount = 0;
Timer? debounce;
List<ApprovalStatusFilterModel> ddfilterJourneyPlan = [
  ApprovalStatusFilterModel(mode: 'P', statusName: 'Pending'),
  ApprovalStatusFilterModel(mode: 'A', statusName: 'Approved'),
  ApprovalStatusFilterModel(mode: 'CN', statusName: 'Cancel'),
  ApprovalStatusFilterModel(mode: 'R', statusName: 'Reject'),
];

String _selectedJourneyPlan = 'P';
TextEditingController _journeyplanSearchController = TextEditingController();

class _JourneyPlanHeaderScreenState extends State<JourneyPlanHeaderScreen> {
  @override
  void initState() {
    _journeyplanSearchController.clear();
    ddfilterJourneyPlan = [
      ApprovalStatusFilterModel(
          statusName:
              selectedLocale?.languageCode == 'en' ? "Pending" : "قيد الانتظار",
          mode: 'P'),
      ApprovalStatusFilterModel(
          statusName:
              selectedLocale?.languageCode == 'en' ? "Approved" : "موافقة",
          mode: 'A'),
      ApprovalStatusFilterModel(
          statusName: selectedLocale?.languageCode == 'en' ? "Cancel" : "يلغي",
          mode: 'CN'),
      ApprovalStatusFilterModel(
          statusName: selectedLocale?.languageCode == "en" ? "Reject" : "مرفوض",
          mode: 'R'),
    ];
    context
        .read<JourneyPlanHeaderBloc>()
        .add(const ClearJourneyPlanHeadersEvent());
    /*  context.read<JourneyPlanHeaderBloc>().add(GetAllJourneyPlanHeadersEvent(
        userID: widget.user.usrId ?? '', mode: '', searchQuery: '')); */
    context.read<JourneyPlanHeaderBloc>().add(GetAllJourneyPlanHeadersEvent(
          userID: widget.user.usrId ?? '',
          mode: 'P', searchQuery: '',
          // mode:'P',
          // searchQuery:''
        ));

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
          AppLocalizations.of(context)!.journeyPlan,
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
              child: Container(
                  height: 30.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: const [
                        BoxShadow(
                            // ignore: use_full_hex_values_for_flutter_colors
                            color: Color(0xff00000050),
                            blurRadius: 0.4,
                            spreadRadius: 0.4)
                      ]),
                  child: TextFormField(
                    style: kfontstyle(fontSize: 13.sp, color: Colors.black87),
                    controller: _journeyplanSearchController,
                    onChanged: (value) {
                      debounce = Timer(
                          const Duration(
                            milliseconds: 500,
                          ), () async {
                        context
                            .read<JourneyPlanHeaderBloc>()
                            .add(GetAllJourneyPlanHeadersEvent(
                              mode: _selectedJourneyPlan,
                              searchQuery: _journeyplanSearchController.text,
                              userID: '',
                            ));
                      });
                    },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 15,
                        ),
                        suffix: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 5.h),
                            Expanded(
                              child: IconButton(
                                onPressed: () {
                                  if (_journeyplanSearchController
                                      .text.isNotEmpty) {
                                    _journeyplanSearchController.clear();

                                    context.read<JourneyPlanHeaderBloc>().add(
                                        GetAllJourneyPlanHeadersEvent(
                                            mode: _selectedJourneyPlan,
                                            searchQuery: "",
                                            userID: ''));
                                  }
                                },
                                icon: Icon(
                                  Icons.close,
                                  size: 13.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                        hintText: AppLocalizations.of(context)!.searchItems,
                        hintStyle: TextStyle(
                            fontSize: 12.sp,
                            color: Colors.grey,
                            fontWeight: FontWeight.normal),
                        isDense: true,
                        counterText: "",
                        contentPadding: const EdgeInsets.all(15.0),
                        filled: true,
                        fillColor: Colors.white,
                        // suffix: InkWell(
                        //   onTap: () {
                        //     _loadPendingdetailsSearchCtrl.clear();
                        //     context.read<LoadingHeaderBloc>().add(
                        //         GetLoadingHeaderEvent(
                        //             searchQuery: '',
                        //             loadingin: LoadingHeaderInModel(
                        //                 userId: widget.user.usrId,
                        //                 fromDate: '01-01-2023',
                        //                 toDate: '23-03-2024',
                        //                 mode: 'DD',
                        //                 area: '',
                        //                 route: '',
                        //                 subArea: '')));
                        //   },
                        //   child: const Icon(
                        //     Icons.close,
                        //     size: 14,
                        //   ),
                        // ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none)),
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    maxLength: 20,
                    // controller: _locationNameTextController,
                  )),
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
                  value: ddfilterJourneyPlan[0].mode,
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
                  items: ddfilterJourneyPlan
                      .map(
                        (e) => DropdownMenuItem(
                          value: e.mode,
                          child: Text(e.statusName),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    _selectedJourneyPlan = value!;
                    context
                        .read<JourneyPlanHeaderBloc>()
                        .add(const ClearJourneyPlanHeadersEvent());

                    context.read<JourneyPlanHeaderBloc>().add(
                          GetAllJourneyPlanHeadersEvent(
                            searchQuery: '',
                            userID: widget.user.usrId ?? '',
                            mode: value,
                          ),
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
              child: BlocBuilder<JourneyPlanHeaderBloc, JourneyPlanHeaderState>(
                builder: (context, state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        state.when(
                          getAllJourneyPlanHeadersState:
                              (List<JourneyPlanHeaderModel>? headers) =>
                                  _selectedJourneyPlan == "P"
                                      ? AppLocalizations.of(context)!
                                          .pendingApprovals
                                      : _selectedJourneyPlan == "A"
                                          ? AppLocalizations.of(context)!
                                              .approvedRequests
                                          : _selectedJourneyPlan == "CN"
                                              ? AppLocalizations.of(context)!
                                                  .canceledRequests
                                              : AppLocalizations.of(context)!
                                                  .rejectedRequests,
                          journeyPlanHeadersFailedState: () =>
                              _selectedJourneyPlan == "P"
                                  ? AppLocalizations.of(context)!
                                      .pendingApprovals
                                  : _selectedJourneyPlan == "A"
                                      ? AppLocalizations.of(context)!
                                          .approvedRequests
                                      : _selectedJourneyPlan == "CN"
                                          ? AppLocalizations.of(context)!
                                              .canceledRequests
                                          : AppLocalizations.of(context)!
                                              .rejectedRequests,
                        ),
                        // state.when(
                        //   getDisputeNoteHeaderState: (headers) =>
                        //   _selectedDisputeMode == "P"
                        //       ? "Pending Approvals"
                        //       : _selectedDisputeMode == "AT"
                        //       ? "Approved Requests"
                        //       : "Rejected Requests",
                        //   disputeNoteHeaderFailedState: () =>
                        //   _selectedDisputeMode == "P"
                        //       ? "Pending Approvals"
                        //       : _selectedDisputeMode == "AT"
                        //       ? "Approved Requests"
                        //       : "Rejected Requests",
                        // ),
                        style: countHeading(),
                      ),
                      Text(
                        state.when(
                          getAllJourneyPlanHeadersState: (headers) =>
                              headers == null ? "0" : headers.length.toString(),
                          journeyPlanHeadersFailedState: () => "0",
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
                child:
                    BlocListener<JourneyPlanHeaderBloc, JourneyPlanHeaderState>(
              listener: (context, state) {
                state.when(
                  getAllJourneyPlanHeadersState: (headers) {
                    if (headers != null) {
                      statuslist =
                          List.generate(headers.length, (index) => null);
                      for (int i = 0; i < headers.length; i++) {
                        if (headers[i].status!.isNotEmpty) {
                          if (headers[i].status == 'Approved') {
                            statuslist[i] = true;
                          } else if (headers[i].status == 'Rejected') {
                            statuslist[i] = false;
                          } else {
                            statuslist[i] = null;
                          }
                        }
                      }
                    }
                  },
                  journeyPlanHeadersFailedState: () {},
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child:
                    BlocBuilder<JourneyPlanHeaderBloc, JourneyPlanHeaderState>(
                  builder: (context, state) {
                    return state.when(
                      getAllJourneyPlanHeadersState: (headers) =>
                          headers == null
                              ? Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 0),
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
                              : headers.isEmpty
                                  ? Center(
                                      child: Text(
                                        AppLocalizations.of(context)!
                                            .noDataFound,
                                        style: kfontstyle(),
                                      ),
                                    )
                                  : ListView.separated(
                                      itemBuilder:
                                          (context, index) => GestureDetector(
                                                onTap: () {
                                                  /*  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          DisputeNoteDetailScreen(
                                                        disputenote: headers[index],
                                                        user: widget.user,
                                                      ),
                                                    ),
                                                  ); */
                                                },
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      height: 70,
                                                      width: 10,
                                                      decoration: BoxDecoration(
                                                          color: const Color(
                                                              0xfffee8e0),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
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
                                                                  'Current Seq : ${headers[index].jpsCurrentSeq}',
                                                                  style:
                                                                      kfontstyle(
                                                                    fontSize:
                                                                        12.sp,
                                                                    color: const Color(
                                                                        0xff2C6B9E),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                                RichText(
                                                                  text: TextSpan(
                                                                      style: DefaultTextStyle.of(context).style.copyWith(
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            decoration:
                                                                                TextDecoration.none,
                                                                          ),
                                                                      children: [
                                                                        TextSpan(
                                                                          text:
                                                                              '${headers[index].cusCode} - ',
                                                                          style: kfontstyle(
                                                                              fontSize: 12.sp,
                                                                              color: const Color(
                                                                                0xff2C6B9E,
                                                                              ),
                                                                              fontWeight: FontWeight.w500),
                                                                        ),
                                                                        TextSpan(
                                                                          text: selectedLocale?.languageCode == "en"
                                                                              ? headers[index].cusName ?? ''
                                                                              : headers[index].arcusName ?? '',
                                                                          style: kfontstyle(
                                                                              fontSize: 12.sp,
                                                                              color: const Color(0xff413434)),
                                                                        )
                                                                      ]),
                                                                ),
                                                                Text(
                                                                  '${headers[index].rotCode} |${headers[index].createdDate}',
                                                                  style: kfontstyle(
                                                                      fontSize:
                                                                          10.sp,
                                                                      color: Colors
                                                                          .grey),
                                                                ),
                                                                BlocConsumer<
                                                                    JoureyPlanApprovalBloc,
                                                                    JoureyPlanApprovalState>(
                                                                  listener:
                                                                      (context,
                                                                          state) {
                                                                    state.when(
                                                                      approveJourneyPlanState:
                                                                          (response) {
                                                                        if (response !=
                                                                            null) {
                                                                          Navigator.pop(
                                                                              context);
                                                                          // if (isApproval) {
                                                                          showDialog(
                                                                              context: context,
                                                                              builder: (context) {
                                                                                if (Platform.isIOS) {
                                                                                  return CupertinoAlertDialog(
                                                                                    title: Text(AppLocalizations.of(context)!.alert),
                                                                                    content: Text('${AppLocalizations.of(context)!.journeyPlan} ${selectedLocale?.languageCode == "en" ? response.status : response.arstatus} '),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () {
                                                                                          context.read<JourneyPlanHeaderBloc>().add(GetAllJourneyPlanHeadersEvent(userID: widget.user.usrId ?? '', mode: 'P', searchQuery: ''));
                                                                                          Navigator.pop(context);
                                                                                        },
                                                                                        child: Text(AppLocalizations.of(context)!.proceed),
                                                                                      ),
                                                                                    ],
                                                                                  );
                                                                                } else {
                                                                                  return AlertDialog(
                                                                                    title: Text(AppLocalizations.of(context)!.alert),
                                                                                    content: Text('${AppLocalizations.of(context)!.journeyPlan} ${selectedLocale?.languageCode == "en" ? response.status : response.arstatus} '),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () {
                                                                                          context.read<JourneyPlanHeaderBloc>().add(GetAllJourneyPlanHeadersEvent(userID: widget.user.usrId ?? '', mode: 'P', searchQuery: ''));
                                                                                          Navigator.pop(context);
                                                                                        },
                                                                                        child: Text(AppLocalizations.of(context)!.proceed),
                                                                                      ),
                                                                                    ],
                                                                                  );
                                                                                }
                                                                              });
                                                                          // }
                                                                        }
                                                                      },
                                                                      approveJourneyPlanFailedState:
                                                                          () {
                                                                        Navigator.pop(
                                                                            context);
                                                                        showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (context) {
                                                                              if (Platform.isIOS) {
                                                                                return CupertinoAlertDialog(
                                                                                  title: Text(AppLocalizations.of(context)!.alert),
                                                                                  content: Text(AppLocalizations.of(context)!.somethingWentWrong),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () {
                                                                                        Navigator.pop(context);
                                                                                      },
                                                                                      child: Text(AppLocalizations.of(context)!.ok),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              } else {
                                                                                return AlertDialog(
                                                                                  title: Text(AppLocalizations.of(context)!.alert),
                                                                                  content: Text(AppLocalizations.of(context)!.somethingWentWrong),
                                                                                  actions: [
                                                                                    TextButton(
                                                                                      onPressed: () {
                                                                                        Navigator.pop(context);
                                                                                      },
                                                                                      child: Text(AppLocalizations.of(context)!.ok),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              }
                                                                            });
                                                                      },
                                                                      approveJourneyPlanLoadingState:
                                                                          () {
                                                                        if (loadingCount ==
                                                                            0) {
                                                                          loadingCount =
                                                                              1;
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
                                                                        }
                                                                      },
                                                                    );
                                                                  },
                                                                  builder:
                                                                      (context,
                                                                          state) {
                                                                    return headers[index].status ==
                                                                            'Pending'
                                                                        ? Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            children: [
                                                                              Transform.scale(
                                                                                scale: 0.8,
                                                                                child: InkWell(
                                                                                  onTap: () {
                                                                                    showDialog(
                                                                                        context: context,
                                                                                        builder: (context) {
                                                                                          if (Platform.isIOS) {
                                                                                            return CupertinoAlertDialog(
                                                                                              title: Text(AppLocalizations.of(context)!.alert),
                                                                                              content: Text(AppLocalizations.of(context)!.doYouWantToApproveThisProduct),
                                                                                              actions: [
                                                                                                TextButton(
                                                                                                  onPressed: () {
                                                                                                    setState(() {});
                                                                                                    Navigator.pop(context);
                                                                                                  },
                                                                                                  child: Text(AppLocalizations.of(context)!.cancel),
                                                                                                ),
                                                                                                TextButton(
                                                                                                  onPressed: () {
                                                                                                    statuslist[index] = true;
                                                                                                    loadingCount = 0;
                                                                                                    setState(() {});
                                                                                                    context.read<JoureyPlanApprovalBloc>().add(const AddJourneyPlanApprovalLoadingEvent());

                                                                                                    context.read<JoureyPlanApprovalBloc>().add(
                                                                                                          ApproveJourneyPlanEvent(
                                                                                                            approve: JourneyPlanApprovalInModel(
                                                                                                              jpsId: headers[index].jpsId,
                                                                                                              userId: headers[index].userID,
                                                                                                            ),
                                                                                                          ),
                                                                                                        );

                                                                                                    Navigator.pop(context);
                                                                                                  },
                                                                                                  child: Text(AppLocalizations.of(context)!.proceed),
                                                                                                ),
                                                                                              ],
                                                                                            );
                                                                                          } else {
                                                                                            return AlertDialog(
                                                                                              title: Text(AppLocalizations.of(context)!.alert),
                                                                                              content: Text(AppLocalizations.of(context)!.doYouWantToApproveThisProduct),
                                                                                              actions: [
                                                                                                TextButton(
                                                                                                  onPressed: () {
                                                                                                    setState(() {});
                                                                                                    Navigator.pop(context);
                                                                                                  },
                                                                                                  child: Text(AppLocalizations.of(context)!.cancel),
                                                                                                ),
                                                                                                TextButton(
                                                                                                  onPressed: () {
                                                                                                    statuslist[index] = true;
                                                                                                    loadingCount = 0;
                                                                                                    setState(() {});
                                                                                                    context.read<JoureyPlanApprovalBloc>().add(const AddJourneyPlanApprovalLoadingEvent());

                                                                                                    context.read<JoureyPlanApprovalBloc>().add(
                                                                                                          ApproveJourneyPlanEvent(
                                                                                                            approve: JourneyPlanApprovalInModel(
                                                                                                              jpsId: headers[index].jpsId,
                                                                                                              userId: headers[index].userID,
                                                                                                            ),
                                                                                                          ),
                                                                                                        );

                                                                                                    Navigator.pop(context);
                                                                                                  },
                                                                                                  child: Text(AppLocalizations.of(context)!.proceed),
                                                                                                ),
                                                                                              ],
                                                                                            );
                                                                                          }
                                                                                        });
                                                                                  },
                                                                                  child: Row(
                                                                                    children: [
                                                                                      Radio(
                                                                                        fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                                                                          return (statuslist[index] == true) ? Colors.green.shade300 : Colors.grey;
                                                                                        }),
                                                                                        /* activeColor: isselected == true
                                                                                                                                                                                                                            ? const Color(0xff0075ff)
                                                                                                                                                                                                                            : Colors.grey, */
                                                                                        value: statuslist[index] == null
                                                                                            ? false
                                                                                            : statuslist[index] == true
                                                                                                ? true
                                                                                                : false,
                                                                                        groupValue: true,
                                                                                        onChanged: (value) {
                                                                                          showDialog(
                                                                                              context: context,
                                                                                              builder: (context) {
                                                                                                if (Platform.isIOS) {
                                                                                                  return CupertinoAlertDialog(
                                                                                                    title: Text(AppLocalizations.of(context)!.alert),
                                                                                                    content: Text(AppLocalizations.of(context)!.doYouWantToApproveThisProduct),
                                                                                                    actions: [
                                                                                                      TextButton(
                                                                                                        onPressed: () {
                                                                                                          setState(() {});
                                                                                                          Navigator.pop(context);
                                                                                                        },
                                                                                                        child: Text(AppLocalizations.of(context)!.cancel),
                                                                                                      ),
                                                                                                      TextButton(
                                                                                                        onPressed: () {
                                                                                                          statuslist[index] = true;
                                                                                                          loadingCount = 0;
                                                                                                          setState(() {});
                                                                                                          context.read<JoureyPlanApprovalBloc>().add(const AddJourneyPlanApprovalLoadingEvent());

                                                                                                          context.read<JoureyPlanApprovalBloc>().add(
                                                                                                                ApproveJourneyPlanEvent(
                                                                                                                  approve: JourneyPlanApprovalInModel(
                                                                                                                    jpsId: headers[index].jpsId,
                                                                                                                    userId: headers[index].userID,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              );

                                                                                                          Navigator.pop(context);
                                                                                                        },
                                                                                                        child: Text(AppLocalizations.of(context)!.proceed),
                                                                                                      ),
                                                                                                    ],
                                                                                                  );
                                                                                                } else {
                                                                                                  return AlertDialog(
                                                                                                    title: Text(AppLocalizations.of(context)!.alert),
                                                                                                    content: Text(AppLocalizations.of(context)!.doYouWantToApproveThisProduct),
                                                                                                    actions: [
                                                                                                      TextButton(
                                                                                                        onPressed: () {
                                                                                                          setState(() {});
                                                                                                          Navigator.pop(context);
                                                                                                        },
                                                                                                        child: Text(AppLocalizations.of(context)!.cancel),
                                                                                                      ),
                                                                                                      TextButton(
                                                                                                        onPressed: () {
                                                                                                          statuslist[index] = true;
                                                                                                          loadingCount = 0;
                                                                                                          setState(() {});
                                                                                                          context.read<JoureyPlanApprovalBloc>().add(const AddJourneyPlanApprovalLoadingEvent());

                                                                                                          context.read<JoureyPlanApprovalBloc>().add(
                                                                                                                ApproveJourneyPlanEvent(
                                                                                                                  approve: JourneyPlanApprovalInModel(
                                                                                                                    jpsId: headers[index].jpsId,
                                                                                                                    userId: headers[index].userID,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              );

                                                                                                          Navigator.pop(context);
                                                                                                        },
                                                                                                        child: Text(AppLocalizations.of(context)!.proceed),
                                                                                                      ),
                                                                                                    ],
                                                                                                  );
                                                                                                }
                                                                                              });
                                                                                        },
                                                                                      ),
                                                                                      Text(
                                                                                        AppLocalizations.of(context)!.approve,
                                                                                        style: kfontstyle(),
                                                                                      )
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Transform.scale(
                                                                                scale: 0.8,
                                                                                child: InkWell(
                                                                                  onTap: () {
                                                                                    showDialog(
                                                                                        context: context,
                                                                                        builder: (context) {
                                                                                          if (Platform.isIOS) {
                                                                                            return CupertinoAlertDialog(
                                                                                              title: Text(AppLocalizations.of(context)!.alert),
                                                                                              content: const Text('Do you want to reject this journey plan'),
                                                                                              actions: [
                                                                                                TextButton(
                                                                                                  onPressed: () {
                                                                                                    setState(() {});
                                                                                                    Navigator.pop(context);
                                                                                                  },
                                                                                                  child: Text(AppLocalizations.of(context)!.cancel),
                                                                                                ),
                                                                                                TextButton(
                                                                                                  onPressed: () {
                                                                                                    statuslist[index] = false;
                                                                                                    loadingCount = 0;
                                                                                                    setState(() {});
                                                                                                    context.read<JoureyPlanApprovalBloc>().add(const AddJourneyPlanApprovalLoadingEvent());

                                                                                                    context.read<JoureyPlanApprovalBloc>().add(
                                                                                                          RejectaJOurneyPlanEvent(
                                                                                                            reject: JourneyPlanApprovalInModel(
                                                                                                              jpsId: headers[index].jpsId,
                                                                                                              userId: headers[index].userID,
                                                                                                            ),
                                                                                                          ),
                                                                                                        );

                                                                                                    Navigator.pop(context);
                                                                                                  },
                                                                                                  child: Text(AppLocalizations.of(context)!.proceed),
                                                                                                ),
                                                                                              ],
                                                                                            );
                                                                                          } else {
                                                                                            return AlertDialog(
                                                                                              title: Text(AppLocalizations.of(context)!.alert),
                                                                                              content: const Text('Do you want to reject this journey plan'),
                                                                                              actions: [
                                                                                                TextButton(
                                                                                                  onPressed: () {
                                                                                                    setState(() {});
                                                                                                    Navigator.pop(context);
                                                                                                  },
                                                                                                  child: Text(AppLocalizations.of(context)!.cancel),
                                                                                                ),
                                                                                                TextButton(
                                                                                                  onPressed: () {
                                                                                                    statuslist[index] = false;
                                                                                                    loadingCount = 0;
                                                                                                    setState(() {});
                                                                                                    context.read<JoureyPlanApprovalBloc>().add(const AddJourneyPlanApprovalLoadingEvent());

                                                                                                    context.read<JoureyPlanApprovalBloc>().add(
                                                                                                          RejectaJOurneyPlanEvent(
                                                                                                            reject: JourneyPlanApprovalInModel(
                                                                                                              jpsId: headers[index].jpsId,
                                                                                                              userId: headers[index].userID,
                                                                                                            ),
                                                                                                          ),
                                                                                                        );

                                                                                                    Navigator.pop(context);
                                                                                                  },
                                                                                                  child: Text(AppLocalizations.of(context)!.proceed),
                                                                                                ),
                                                                                              ],
                                                                                            );
                                                                                          }
                                                                                        });
                                                                                  },
                                                                                  child: Row(
                                                                                    children: [
                                                                                      Radio(
                                                                                        fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                                                                          return (statuslist[index] != null && !statuslist[index]!) ? Colors.red.shade300 : Colors.grey;
                                                                                        }),
                                                                                        /*  activeColor: isselected == false
                                                                                                                                                                                                                            ? const Color(0xff0075ff)
                                                                                                                                                                                                                            : Colors.grey, */
                                                                                        value: statuslist[index] == null
                                                                                            ? true
                                                                                            : statuslist[index] == true
                                                                                                ? true
                                                                                                : false,
                                                                                        groupValue: false,
                                                                                        onChanged: (value) {
                                                                                          showDialog(
                                                                                              context: context,
                                                                                              builder: (context) {
                                                                                                if (Platform.isIOS) {
                                                                                                  return CupertinoAlertDialog(
                                                                                                    title: Text(AppLocalizations.of(context)!.alert),
                                                                                                    content: Text(AppLocalizations.of(context)!.doYouWantToRejectThisProduct),
                                                                                                    actions: [
                                                                                                      TextButton(
                                                                                                        onPressed: () {
                                                                                                          setState(() {});
                                                                                                          Navigator.pop(context);
                                                                                                        },
                                                                                                        child: Text(AppLocalizations.of(context)!.cancel),
                                                                                                      ),
                                                                                                      TextButton(
                                                                                                        onPressed: () {
                                                                                                          statuslist[index] = false;
                                                                                                          loadingCount = 0;
                                                                                                          setState(() {});
                                                                                                          context.read<JoureyPlanApprovalBloc>().add(const AddJourneyPlanApprovalLoadingEvent());

                                                                                                          context.read<JoureyPlanApprovalBloc>().add(
                                                                                                                RejectaJOurneyPlanEvent(
                                                                                                                  reject: JourneyPlanApprovalInModel(
                                                                                                                    jpsId: headers[index].jpsId,
                                                                                                                    userId: headers[index].userID,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              );

                                                                                                          Navigator.pop(context);
                                                                                                        },
                                                                                                        child: Text(AppLocalizations.of(context)!.proceed),
                                                                                                      ),
                                                                                                    ],
                                                                                                  );
                                                                                                } else {
                                                                                                  return AlertDialog(
                                                                                                    title: Text(AppLocalizations.of(context)!.alert),
                                                                                                    content: Text(AppLocalizations.of(context)!.doYouWantToRejectThisProduct),
                                                                                                    actions: [
                                                                                                      TextButton(
                                                                                                        onPressed: () {
                                                                                                          setState(() {});
                                                                                                          Navigator.pop(context);
                                                                                                        },
                                                                                                        child: Text(AppLocalizations.of(context)!.cancel),
                                                                                                      ),
                                                                                                      TextButton(
                                                                                                        onPressed: () {
                                                                                                          statuslist[index] = false;
                                                                                                          loadingCount = 0;
                                                                                                          setState(() {});
                                                                                                          context.read<JoureyPlanApprovalBloc>().add(const AddJourneyPlanApprovalLoadingEvent());

                                                                                                          context.read<JoureyPlanApprovalBloc>().add(
                                                                                                                RejectaJOurneyPlanEvent(
                                                                                                                  reject: JourneyPlanApprovalInModel(
                                                                                                                    jpsId: headers[index].jpsId,
                                                                                                                    userId: headers[index].userID,
                                                                                                                  ),
                                                                                                                ),
                                                                                                              );

                                                                                                          Navigator.pop(context);
                                                                                                        },
                                                                                                        child: Text(AppLocalizations.of(context)!.proceed),
                                                                                                      ),
                                                                                                    ],
                                                                                                  );
                                                                                                }
                                                                                              });

                                                                                          /* context
                                                                                                                                                                                              .read<
                                                                                                                                                                                                  AapprovalOrRejectRadioCubit>()
                                                                                                                                                                                              .changeApprovalStatus(
                                                                                                                                                                                                  statuslist[index]); */
                                                                                        },
                                                                                      ),
                                                                                      Text(
                                                                                        AppLocalizations.of(context)!.reject,
                                                                                        style: kfontstyle(),
                                                                                      )
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              )
                                                                            ],
                                                                          )
                                                                        : Row(
                                                                            children: [
                                                                              Transform.scale(
                                                                                scale: 0.8,
                                                                                child: Row(
                                                                                  children: [
                                                                                    Radio(
                                                                                      fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                                                                        return (statuslist[index] == true) ? Colors.green.shade300 : Colors.grey;
                                                                                      }),
                                                                                      value: statuslist[index] == null
                                                                                          ? false
                                                                                          : statuslist[index] == true
                                                                                              ? true
                                                                                              : false,
                                                                                      groupValue: true,
                                                                                      onChanged: (value) {},
                                                                                    ),
                                                                                    Text(
                                                                                      AppLocalizations.of(context)!.approve,
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
                                                                                      fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                                                                        return (statuslist[index] != null && !statuslist[index]!) ? Colors.red.shade300 : Colors.grey;
                                                                                      }),
                                                                                      value: statuslist[index] == null
                                                                                          ? true
                                                                                          : statuslist[index] == true
                                                                                              ? true
                                                                                              : false,
                                                                                      groupValue: false,
                                                                                      onChanged: (value) {},
                                                                                    ),
                                                                                    Text(
                                                                                      AppLocalizations.of(context)!.reject,
                                                                                      style: kfontstyle(),
                                                                                    )
                                                                                  ],
                                                                                ),
                                                                              )
                                                                            ],
                                                                          );
                                                                  },
                                                                ),
                                                              ],
                                                            ),
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
                                                                ? Colors.red
                                                                    .shade300
                                                                : const Color(
                                                                    0xfff7f4e2)
                                                            : const Color(
                                                                0xffe3f7e2),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          20,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                                horizontal: 8,
                                                                vertical: 5),
                                                        child: Text(
                                                          selectedLocale
                                                                      ?.languageCode ==
                                                                  'en'
                                                              ? headers[index]
                                                                      .status ??
                                                                  ''
                                                              : headers[index]
                                                                      .arStatus ??
                                                                  '',
                                                          style: kfontstyle(
                                                              fontSize: 8.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: headers[index]
                                                                          .status ==
                                                                      'Rejected'
                                                                  ? Colors
                                                                      .white54
                                                                  : Colors
                                                                      .black54),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                      separatorBuilder: (context, index) =>
                                          Divider(
                                            color: Colors.grey[300],
                                          ),
                                      itemCount: headers.length),
                      journeyPlanHeadersFailedState: () => Center(
                        child: Text(
                          AppLocalizations.of(context)!.noDataAvailable,
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
