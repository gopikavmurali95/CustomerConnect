import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approvalstatusfilter/approvalfitermodel.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart';
import 'package:customer_connect/feature/state/bloc/scheduledreturnheader/schduled_return_header_bloc.dart';
import 'package:customer_connect/feature/state/cubit/navigatetoback/navigateto_back_cubit.dart';
import 'package:customer_connect/feature/view/scheduled_return/scheduled_return_detailscreen.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScheduledReturnHEaderScreen extends StatefulWidget {
  final LoginUserModel user;
  const ScheduledReturnHEaderScreen({super.key, required this.user});

  @override
  State<ScheduledReturnHEaderScreen> createState() =>
      _ScheduledReturnHEaderScreenState();
}

List<ApprovalStatusFilterModel> filterFieldsScheduledReturn = [
  ApprovalStatusFilterModel(statusName: "Pending", mode: 'P'),
  ApprovalStatusFilterModel(statusName: "Action Taken", mode: 'AT'),
];

String _selectedeMode = 'P';
TextEditingController _SearchCtrl = TextEditingController();
Timer? debounce;

class _ScheduledReturnHEaderScreenState
    extends State<ScheduledReturnHEaderScreen> {
  @override
  void initState() {
    context
        .read<SchduledReturnHeaderBloc>()
        .add(const ClearScheduledReturnHeadersEvent());
    context.read<SchduledReturnHeaderBloc>().add(
        GetAllScheduledReturnHeadersEvent(
            userID: widget.user.usrId ?? '', mode: 'P', searchQuery: ''));
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
            context
                .read<ApprovalCountsBloc>()
                .add(GetApprovalsCountEvent(userID: widget.user.usrId ?? ''));
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          "Scheduled return",
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
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: BlocBuilder<SchduledReturnHeaderBloc,
                  SchduledReturnHeaderState>(
                builder: (context, state) {
                  return state.when(
                    getScheduledReturnHeadersState: (headers) => headers == null
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
                        : Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.grey.shade200),
                                      borderRadius: BorderRadius.circular(10.0),
                                      boxShadow: const [
                                        BoxShadow(
                                            // ignore: use_full_hex_values_for_flutter_colors
                                            color: Color(0xff00000050),
                                            blurRadius: 0.4,
                                            spreadRadius: 0.4)
                                      ]),
                                  child: TextFormField(
                                    controller: _SearchCtrl,
                                    style: kfontstyle(
                                        fontSize: 10.sp, color: Colors.black87),
                                    decoration: InputDecoration(
                                      isDense: true,
                                      hintText: 'Search here..',
                                      suffix: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: IconButton(
                                                onPressed: () {
                                                  if (_SearchCtrl
                                                      .text.isNotEmpty) {
                                                    _SearchCtrl.clear();

                                                    context
                                                        .read<
                                                            SchduledReturnHeaderBloc>()
                                                        .add(
                                                            GetAllScheduledReturnHeadersEvent(
                                                                userID: widget
                                                                        .user
                                                                        .usrId ??
                                                                    '',
                                                                mode:
                                                                    _selectedeMode,
                                                                searchQuery:
                                                                    ''));
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
                                          const EdgeInsets.symmetric(
                                              horizontal: 10),
                                      border: /* InputBorder
                                                                .none  */
                                          OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                      ),
                                    ),
                                    onChanged: (value) {
                                      debounce = Timer(
                                          const Duration(
                                            milliseconds: 500,
                                          ), () async {
                                        context
                                            .read<SchduledReturnHeaderBloc>()
                                            .add(
                                                GetAllScheduledReturnHeadersEvent(
                                                    userID:
                                                        widget.user.usrId ?? '',
                                                    mode: _selectedeMode,
                                                    searchQuery: value));
                                      });
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                child: Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.grey.shade200),
                                      borderRadius: BorderRadius.circular(10.0),
                                      boxShadow: const [
                                        BoxShadow(
                                            // ignore: use_full_hex_values_for_flutter_colors
                                            color: Color(0xff00000050),
                                            blurRadius: 0.4,
                                            spreadRadius: 0.4)
                                      ]),
                                  child: DropdownButtonFormField(
                                    elevation: 0,
                                    value: filterFieldsScheduledReturn[0].mode,
                                    dropdownColor: Colors.white,
                                    style: kfontstyle(
                                        fontSize: 10.sp, color: Colors.black87),
                                    decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 10),
                                      border: /* InputBorder
                                                                .none  */
                                          OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: const BorderSide(
                                            color: Colors.transparent),
                                      ),
                                    ),
                                    items: filterFieldsScheduledReturn
                                        .map(
                                          (e) => DropdownMenuItem(
                                            value: e.mode,
                                            child: Text(e.statusName),
                                          ),
                                        )
                                        .toList(),
                                    onChanged: (value) {
                                      _selectedeMode = value!;
                                      context.read<SchduledReturnHeaderBloc>().add(
                                          const ClearScheduledReturnHeadersEvent());
                                      context
                                          .read<SchduledReturnHeaderBloc>()
                                          .add(
                                              GetAllScheduledReturnHeadersEvent(
                                                  userID:
                                                      widget.user.usrId ?? '',
                                                  mode: value,
                                                  searchQuery: ''));
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      _selectedeMode == 'P'
                                          ? 'Pending Approvals'
                                          : 'Approved Requests',
                                      style: countHeading(),
                                    ),
                                    Text(
                                      headers.length.toString(),
                                      style: countHeading(),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Expanded(
                                child: ListView.separated(
                                    itemBuilder: (context, index) =>
                                        GestureDetector(
                                          onTap: () {
                                            context
                                                .read<NavigatetoBackCubit>()
                                                .cancelPop(false);
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ScheduledReturnDetailScreen(
                                                  scheduledreturn:
                                                      headers[index],
                                                  user: widget.user,
                                                  currentMode: _selectedeMode,
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
                                                                    .rrhRequestNumber ??
                                                                '',
                                                            style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              color: const Color(
                                                                  0xff2C6B9E),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Text(
                                                                '${headers[index].cusCode} - ',
                                                                style:
                                                                    kfontstyle(
                                                                  fontSize:
                                                                      11.sp,
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
                                                                color: Colors
                                                                    .grey),
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
                                                              fontSize: 10.sp,
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
                                            ],
                                          ),
                                        ),
                                    separatorBuilder: (context, index) =>
                                        Divider(
                                          color: Colors.grey[300],
                                        ),
                                    itemCount: headers.length),
                              ),
                            ],
                          ),
                    scheduledRetunrHEadersFailedState: () => Center(
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
