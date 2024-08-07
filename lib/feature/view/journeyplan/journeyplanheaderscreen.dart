import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/journey_plan_approval_in_model/journey_plan_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart';
import 'package:customer_connect/feature/state/bloc/journeyplanapproval/jourey_plan_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/journeyplanheader/journey_plan_header_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
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
    context
        .read<JourneyPlanHeaderBloc>()
        .add(const ClearJourneyPlanHeadersEvent());
    context.read<JourneyPlanHeaderBloc>().add(GetAllJourneyPlanHeadersEvent(
        userID: widget.user.usrId ?? '', mode: '', searchQuery: ''));
    context.read<JourneyPlanHeaderBloc>().add(GetAllJourneyPlanHeadersEvent(
          userID: widget.user.usrId ?? '',
          mode: 'P', searchQuery: '',
          // mode:'P',
          // searchQuery:''
        ));
    _journeyplanSearchController.clear();
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
          "Journey plan ",
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
              padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
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
                        hintText: "Search Items",
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Card(
                child: Container(
                  height: 30.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: const [
                        BoxShadow(
                            // ignore: use_full_hex_values_for_flutter_colors
                            color: Color(0xff00000050),
                            // blurRadius: 0.2,
                            spreadRadius: 0.2)
                      ]),
                  // decoration: BoxDecoration(
                  //   boxShadow: [
                  //     BoxShadow(
                  //       color: Colors.grey.withOpacity(0.2),
                  //       spreadRadius: .5,
                  //       blurRadius: 1,
                  //       offset: const Offset(0, 2),
                  //     ),
                  //   ],
                  //   borderRadius: BorderRadius.circular(10),
                  // ),
                  child: DropdownButtonFormField(
                    //menuMaxHeight: 100,
                    //padding: EdgeInsets.all(100),

                    elevation: 0,
                    value: ddfilterJourneyPlan[0].mode,
                    // value: ddfilterFieldsDisputeNote[0].mode,
                    dropdownColor: Colors.white,
                    style: kfontstyle(fontSize: 10.sp, color: Colors.black87),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
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
                                      ? "Pending Approvals"
                                      : _selectedJourneyPlan == "A"
                                          ? "Approved Requests"
                                          : _selectedJourneyPlan == "CN"
                                              ? "Cancelled Requests"
                                              : "Rejected Requests",
                          journeyPlanHeadersFailedState: () =>
                              _selectedJourneyPlan == "P"
                                  ? "Pending Approvals"
                                  : _selectedJourneyPlan == "A"
                                      ? "Approved Requests"
                                      : _selectedJourneyPlan == "CN"
                                          ? "Cancelled Requests"
                                          : "Rejected Requests",
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
                                        "No Data Available",
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
                                                      height: 50,
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
                                                                  headers[index]
                                                                          .jpsCurrentSeq ??
                                                                      '',
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
                                                                Row(
                                                                  children: [
                                                                    Text(
                                                                      '${headers[index].cusCode} - ',
                                                                      style: kfontstyle(
                                                                          fontSize: 12.sp,
                                                                          color: const Color(
                                                                            0xff2C6B9E,
                                                                          ),
                                                                          fontWeight: FontWeight.w500),
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Text(
                                                                        overflow:
                                                                            TextOverflow.ellipsis,
                                                                        headers[index].cusName ??
                                                                            '',
                                                                        style: kfontstyle(
                                                                            fontSize:
                                                                                12.sp,
                                                                            color: const Color(0xff413434)),
                                                                      ),
                                                                    ),
                                                                  ],
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
                                                                          showCupertinoDialog(
                                                                            context:
                                                                                context,
                                                                            builder: (context) =>
                                                                                CupertinoAlertDialog(
                                                                              title: const Text('Alert'),
                                                                              content: Text(response.status ?? ''),
                                                                              actions: [
                                                                                TextButton(
                                                                                  onPressed: () {
                                                                                    context.read<JourneyPlanHeaderBloc>().add(GetAllJourneyPlanHeadersEvent(userID: widget.user.usrId ?? '', mode: '', searchQuery: ''));
                                                                                    Navigator.pop(context);
                                                                                  },
                                                                                  child: const Text('Proceed'),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          );
                                                                          // }
                                                                        }
                                                                      },
                                                                      approveJourneyPlanFailedState:
                                                                          () {
                                                                        Navigator.pop(
                                                                            context);
                                                                        showCupertinoDialog(
                                                                          context:
                                                                              context,
                                                                          builder: (context) =>
                                                                              CupertinoAlertDialog(
                                                                            title:
                                                                                const Text('Alert'),
                                                                            content:
                                                                                const Text("something went wrong, please try again later"),
                                                                            actions: [
                                                                              TextButton(
                                                                                onPressed: () {
                                                                                  context.read<JourneyPlanHeaderBloc>().add(GetAllJourneyPlanHeadersEvent(userID: widget.user.usrId ?? '', mode: '', searchQuery: ''));
                                                                                  Navigator.pop(context);
                                                                                },
                                                                                child: const Text('Ok'),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        );
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
                                                                    return Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Transform
                                                                            .scale(
                                                                          scale:
                                                                              0.8,
                                                                          child:
                                                                              Row(
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
                                                                                  showCupertinoDialog(
                                                                                    context: context,
                                                                                    builder: (context) => CupertinoAlertDialog(
                                                                                      title: const Text('Alert'),
                                                                                      content: const Text("Do you Want to Approve this product"),
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
                                                                                          child: const Text('Proceed'),
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
                                                                        Transform
                                                                            .scale(
                                                                          scale:
                                                                              0.8,
                                                                          child:
                                                                              Row(
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
                                                                                  showCupertinoDialog(
                                                                                    context: context,
                                                                                    builder: (context) => CupertinoAlertDialog(
                                                                                      title: const Text('Alert'),
                                                                                      content: const Text("Do you Want to Reject this product"),
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
                                                                                          child: const Text('Proceed'),
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
                                                                ? Colors
                                                                    .red[300]
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
                                                          headers[index]
                                                                  .status ??
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
