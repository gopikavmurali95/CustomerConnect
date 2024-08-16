import 'dart:async';
import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart';
import 'package:customer_connect/feature/state/bloc/materialreqhead/material_req_head_bloc.dart';
import 'package:customer_connect/feature/view/materialrequest/materialrequestdetail.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../data/models/approvalstatusfilter/approvalfitermodel.dart';
import '../LoadInDetail/load_detail_completed.dart';

class MaterialRequestHeaderScreen extends StatefulWidget {
  final LoginUserModel user;
  const MaterialRequestHeaderScreen({super.key, required this.user});

  @override
  State<MaterialRequestHeaderScreen> createState() =>
      _MaterialRequestHeaderScreenState();
}

List<ApprovalStatusFilterModel> ddfilterMaterialReq = [
  ApprovalStatusFilterModel(mode: 'P', statusName: 'Pending'),
  ApprovalStatusFilterModel(mode: 'A', statusName: 'Approved'),
  ApprovalStatusFilterModel(mode: 'AH', statusName: 'Approved and Hold'),
  ApprovalStatusFilterModel(mode: 'R', statusName: 'Reject'),
];

String _selectedMaterialReq = 'P';
TextEditingController _materialReqSearchController = TextEditingController();

class _MaterialRequestHeaderScreenState
    extends State<MaterialRequestHeaderScreen> {
  @override
  void initState() {
    context.read<MaterialReqHeadBloc>().add(const MaterialReqHeadClearEvent());
    context.read<MaterialReqHeadBloc>().add(MaterialHeadSuccessEvent(
          userId: widget.user.usrId ?? '',
          mode: 'P',
          searchQuery: '',
        ));
    _materialReqSearchController.clear();
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
          AppLocalizations.of(context)!.materialRequest,
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
              _onRefreshMaterialReqHeaderScreen(context, widget.user),
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
                          controller: _materialReqSearchController,
                          onChanged: (value) {
                            debounce = Timer(
                                const Duration(
                                  milliseconds: 500,
                                ), () async {
                              context
                                  .read<MaterialReqHeadBloc>()
                                  .add(MaterialHeadSuccessEvent(
                                    userId: widget.user.usrId ?? '',
                                    mode: _selectedMaterialReq,
                                    searchQuery:
                                        _materialReqSearchController.text,
                                  ));
                            });
                            log(_materialReqSearchController.text);
                            log(_selectedMaterialReq);
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
                                        if (_materialReqSearchController
                                            .text.isNotEmpty) {
                                          _materialReqSearchController.clear();

                                          context
                                              .read<MaterialReqHeadBloc>()
                                              .add(MaterialHeadSuccessEvent(
                                                  mode: _selectedMaterialReq,
                                                  searchQuery: "",
                                                  userId: ''));
                                        }
                                        // _loadPendingSearchCtrl.clear();
                                        // context
                                        //     .read<LoadingDetailBloc>()
                                        //     .add(const ClearLoadingDetailEvent());
                                        // context.read<LoadingDetailBloc>().add(
                                        //   GetloadingDetailEvent(
                                        //       iD: widget.loadingheader.id ?? '',
                                        //       searchQuery: ''),
                                        // );
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
                        child: DropdownButtonFormField(
                          elevation: 0,
                          value: ddfilterMaterialReq[0].mode,
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
                          items: ddfilterMaterialReq
                              .map(
                                (e) => DropdownMenuItem(
                                  value: e.mode,
                                  child: Text(e.statusName),
                                ),
                              )
                              .toList(),
                          onChanged: (value) {
                            _selectedMaterialReq = value!;
                            context
                                .read<MaterialReqHeadBloc>()
                                .add(const MaterialReqHeadClearEvent());

                            context.read<MaterialReqHeadBloc>().add(
                                  MaterialHeadSuccessEvent(
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
                    child:
                        BlocBuilder<MaterialReqHeadBloc, MaterialReqHeadState>(
                      builder: (context, state) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              state.when(
                                materialreqheadsuccess: (materialheader) =>
                                    _selectedMaterialReq == "P"
                                        ? AppLocalizations.of(context)!
                                            .pendingApprovals
                                        : _selectedMaterialReq == "A"
                                            ? AppLocalizations.of(context)!
                                                .approvedRequests
                                            : _selectedMaterialReq == "AH"
                                                ? AppLocalizations.of(context)!
                                                    .approvedAndHold
                                                : AppLocalizations.of(context)!
                                                    .rejectedRequests,
                                materialreqheadFailed: () =>
                                    _selectedMaterialReq == "P"
                                        ? AppLocalizations.of(context)!
                                            .pendingApprovals
                                        : _selectedMaterialReq == "A"
                                            ? AppLocalizations.of(context)!
                                                .approvedRequests
                                            : _selectedMaterialReq == "AH"
                                                ? "Approved and Hold Requests"
                                                : AppLocalizations.of(context)!
                                                    .rejectedRequests,
                                // materialreqheadsuccess: (materialheader) =>,
                                // materialreqheadFailed: () =>,
                              ),
                              style: countHeading(),
                            ),
                            Text(
                              state.when(
                                materialreqheadsuccess: (headers) =>
                                    headers == null
                                        ? "0"
                                        : headers.length.toString(),
                                materialreqheadFailed: () => "0",
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
                    child:
                        BlocBuilder<MaterialReqHeadBloc, MaterialReqHeadState>(
                      builder: (context, state) {
                        return state.when(
                          materialreqheadsuccess: (headers) => headers == null
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
                                        style: boxHeading(),
                                      ),
                                    )
                                  : ListView.separated(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) =>
                                          GestureDetector(
                                            onTap: () // {},
                                                {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        MaterialRequestDetailScreen(
                                                          user: widget.user,
                                                          materialrequest:
                                                              headers[index],
                                                          currentMode:
                                                              _selectedMaterialReq,
                                                        )),
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
                                                              headers[index]
                                                                      .mrhNumber ??
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
                                                                  '${selectedLocale?.languageCode == "en" ? headers[index].strName : headers[index].strArName} - ',
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
                                                                    selectedLocale?.languageCode ==
                                                                            "en"
                                                                        ? headers[index].warName ??
                                                                            ''
                                                                        : headers[index].warArName ??
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
                                                        // height: 10.h,
                                                        // width: 10.h,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: headers[index]
                                                                      .status!
                                                                      .isEmpty ||
                                                                  headers[index]
                                                                          .status !=
                                                                      'A'
                                                              ? headers[index]
                                                                          .status !=
                                                                      'AH'
                                                                  ? Colors
                                                                      .red[300]
                                                                  : const Color(
                                                                      0xfff7f4e2)
                                                              : const Color(
                                                                  0xffe3f7e2),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            10,
                                                          ),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      10,
                                                                  vertical: 3),
                                                          child: Text(
                                                            headers[index]
                                                                    .status ??
                                                                "",
                                                            style: kfontstyle(
                                                                fontSize:
                                                                    10.sp),
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
                          materialreqheadFailed: () => SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: Center(
                              child: Text(
                                AppLocalizations.of(context)!.noDataAvailable,
                                style: kfontstyle(),
                              ),
                            ),
                          ),
                          // returnHeaderFailedstate: () => Center(
                          //   child: Text(
                          //     'No Data Available',
                          //     style: kfontstyle(),
                          //   ),
                          // ),
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

  Future<void> _onRefreshMaterialReqHeaderScreen(
      BuildContext context, LoginUserModel model) async {
    context.read<MaterialReqHeadBloc>().add(const MaterialReqHeadClearEvent());
    context.read<MaterialReqHeadBloc>().add(MaterialHeadSuccessEvent(
        userId: model.usrId!, mode: _selectedMaterialReq, searchQuery: ''));
  }
}
