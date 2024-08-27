import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/models/approvalstatusfilter/approvalfitermodel.dart';
import '../../state/bloc/loadreqheader/load_req_header_bloc.dart';
import '../LoadInDetail/load_detail_completed.dart';
import 'loadrequestdetailscreen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoadRequestHeaderScreen extends StatefulWidget {
  final LoginUserModel user;
  const LoadRequestHeaderScreen({super.key, required this.user});

  @override
  State<LoadRequestHeaderScreen> createState() =>
      _LoadRequestHeaderScreenState();
}

List<ApprovalStatusFilterModel> ddfilterLoadRequest = [
  ApprovalStatusFilterModel(mode: 'P', statusName: 'Pending'),
  ApprovalStatusFilterModel(mode: 'A', statusName: 'Approved'),
  ApprovalStatusFilterModel(mode: 'R', statusName: 'Reject'),
];

String _selectedloadrequest = 'P';
TextEditingController _loadqSearchController = TextEditingController();

class _LoadRequestHeaderScreenState extends State<LoadRequestHeaderScreen> {
  @override
  void initState() {
    _loadqSearchController.clear();
    ddfilterLoadRequest = [
      ApprovalStatusFilterModel(
          statusName:
              selectedLocale?.languageCode == 'en' ? "Pending" : "قيد الانتظار",
          mode: 'P'),
      ApprovalStatusFilterModel(
          statusName:
              selectedLocale?.languageCode == 'en' ? "Approved" : "موافقة",
          mode: 'A'),
      ApprovalStatusFilterModel(
          statusName:
              selectedLocale?.languageCode == "en" ? "Rejected" : "مرفوض",
          mode: 'R'),
    ];
    context.read<LoadReqHeaderBloc>().add(const LoadreqClearEvent());
    
    context.read<LoadReqHeaderBloc>().add(LoadreqSuccessEvent(
          userId: widget.user.usrId ?? '',
          mode: 'P', searchQuery: '',
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
          AppLocalizations.of(context)!.loadRequest,
          style: appHeading(),
        ),
      ),
      body: PopScope(
        onPopInvoked: (didPop) {
          context
              .read<ApprovalCountsBloc>()
              .add(GetApprovalsCountEvent(userID: widget.user.usrId ?? ''));
        },
        child: RefreshIndicator(
          triggerMode: RefreshIndicatorTriggerMode.anywhere,
          color: const Color.fromARGB(255, 181, 218, 245),
          displacement: BorderSide.strokeAlignCenter,
          onRefresh: () =>
              _onRefreshLoadRequestHeaderScreen(context, widget.user),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 10, bottom: 3),
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
                          style: kfontstyle(
                              fontSize: 13.sp, color: Colors.black87),
                          controller: _loadqSearchController,
                          onChanged: (value) {
                            debounce = Timer(
                                const Duration(
                                  milliseconds: 500,
                                ), () async {
                              context.read<LoadReqHeaderBloc>().add(
                                  LoadreqSuccessEvent(
                                      mode: _selectedloadrequest,
                                      searchQuery: _loadqSearchController.text,
                                      userId: ''));
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
                                        if (_loadqSearchController
                                            .text.isNotEmpty) {
                                          _loadqSearchController.clear();

                                          context.read<LoadReqHeaderBloc>().add(
                                              LoadreqSuccessEvent(
                                                  mode: _selectedloadrequest,
                                                  searchQuery: "",
                                                  userId: ''));
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
                              hintText:
                                  AppLocalizations.of(context)!.searchItems,
                              hintStyle: TextStyle(
                                  fontSize: 12.sp,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal),
                              isDense: true,
                              counterText: "",
                              contentPadding: const EdgeInsets.all(15.0),
                              filled: true,
                              fillColor: Colors.white,
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
                        child: DropdownButtonFormField(
                          elevation: 0,
                          value: ddfilterLoadRequest[0].mode,
                          // value: ddfilterFieldsDisputeNote[0].mode,
                          dropdownColor: Colors.white,
                          style: kfontstyle(
                              fontSize: 10.sp, color: Colors.black87),
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
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                            ),
                          ),
                          items: ddfilterLoadRequest
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e.mode,
                                  child: Text(e.statusName),
                                ),
                              )
                              .toList(),
                          onChanged: (value) {
                            _selectedloadrequest = value!;
                            context
                                .read<LoadReqHeaderBloc>()
                                .add(const LoadreqClearEvent());

                            context.read<LoadReqHeaderBloc>().add(
                                  LoadreqSuccessEvent(
                                      searchQuery: '',
                                      userId: widget.user.usrId ?? '',
                                      mode: value),
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
                    child: BlocBuilder<LoadReqHeaderBloc, LoadReqHeaderState>(
                      builder: (context, state) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              state.when(
                                loadReqheadSuccessState: (loadList) =>
                                    _selectedloadrequest == "P"
                                        ? AppLocalizations.of(context)!
                                            .pendingApprovals
                                        : _selectedloadrequest == "A"
                                            ? AppLocalizations.of(context)!
                                                .approvedRequests
                                            : AppLocalizations.of(context)!
                                                .rejectedRequests,
                                loadReqheadFailedState: () =>
                                    _selectedloadrequest == "P"
                                        ? AppLocalizations.of(context)!
                                            .pendingApprovals
                                        : _selectedloadrequest == "A"
                                            ? AppLocalizations.of(context)!
                                                .approvedRequests
                                            : AppLocalizations.of(context)!
                                                .rejectedRequests,
                              ),
                              style: countHeading(),
                            ),
                            Text(
                              state.when(
                                loadReqheadSuccessState: (headers) =>
                                    headers == null
                                        ? "0"
                                        : headers.length.toString(),
                                loadReqheadFailedState: () => "0",
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: BlocBuilder<LoadReqHeaderBloc, LoadReqHeaderState>(
                      builder: (context, state) {
                        return state.when(
                          loadReqheadSuccessState: (headers) => headers == null
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
                                            .noDataAvailable,
                                        style: kfontstyle(),
                                      ),
                                    )
                                  : ListView.separated(
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      itemBuilder: (context, index) =>
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        LoadReqDetailscreen(
                                                          user: widget.user,
                                                          loadrequest:
                                                              headers[index],
                                                          currentMode:
                                                              _selectedloadrequest,
                                                        )

                                                    // LoadTransferDetailScreen(
                                                    //   header: headers[index],
                                                    //   user: widget.user,
                                                    // ),
                                                    ),
                                              );
                                            },
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 50,
                                                  width: 10,
                                                  decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xfffee8e0),
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
                                                              '${headers[index].lrhNumber}',
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
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  "${headers[index].rotName} - ",
                                                                  style: kfontstyle(
                                                                      fontSize:
                                                                          12.sp,
                                                                      color: const Color(
                                                                          0xff2C6B9E)),
                                                                ),
                                                                Expanded(
                                                                  child: Text(
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    selectedLocale?.languageCode ==
                                                                            "en"
                                                                        ? headers[index].usrName ??
                                                                            ''
                                                                        : headers[index].usrArabicName ??
                                                                            '',
                                                                    style: kfontstyle(
                                                                        fontSize: 12
                                                                            .sp,
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
                                                                  fontSize:
                                                                      10.sp,
                                                                  color: Colors
                                                                      .grey),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
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
                                                                fontSize: 10.sp,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: headers[
                                                                                index]
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
                          loadReqheadFailedState: () => SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: Center(
                              child: Text(
                                AppLocalizations.of(context)!.noDataAvailable,
                                style: kfontstyle(),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  Future<void> _onRefreshLoadRequestHeaderScreen(
    BuildContext context, LoginUserModel model) async {
  context.read<LoadReqHeaderBloc>().add(const LoadreqClearEvent());
  context
      .read<LoadReqHeaderBloc>()
      .add( LoadreqSuccessEvent(userId: widget.user.usrId ?? '', mode: 'P', searchQuery: ''));
}

}

