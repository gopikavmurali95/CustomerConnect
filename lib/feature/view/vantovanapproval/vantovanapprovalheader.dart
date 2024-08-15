import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approvalstatusfilter/approvalfitermodel.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart';
import 'package:customer_connect/feature/state/bloc/vantovanheader/van_to_van_header_bloc.dart';
import 'package:customer_connect/feature/state/cubit/navigatetoback/navigateto_back_cubit.dart';
import 'package:customer_connect/feature/view/vantovanapproval/vantovanapprovaldetails.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class VanToVanApprovalHeader extends StatefulWidget {
  final LoginUserModel user;
  const VanToVanApprovalHeader({super.key, required this.user});

  @override
  State<VanToVanApprovalHeader> createState() => _VanToVanApprovalHeaderState();
}

Timer? debounce;
TextEditingController _vanToVanHSearchCtrl = TextEditingController();
String _selectedMode = 'P';
List<ApprovalStatusFilterModel> ddfilterFieldsVanToVan = [
  ApprovalStatusFilterModel(statusName: "Pending", mode: 'P'),
  ApprovalStatusFilterModel(statusName: "Approved", mode: 'AT'),
  ApprovalStatusFilterModel(statusName: "Rejected", mode: 'R'),
];

class _VanToVanApprovalHeaderState extends State<VanToVanApprovalHeader> {
  @override
  void initState() {
    _vanToVanHSearchCtrl.clear();
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
          AppLocalizations.of(context)!.truck_to_truck,
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
                  controller: _vanToVanHSearchCtrl,
                  style: kfontstyle(fontSize: 13.sp, color: Colors.black87),
                  decoration: InputDecoration(
                    isDense: true,
                    hintText: AppLocalizations.of(context)!.searchHere,
                    suffix: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: IconButton(
                              onPressed: () {
                                if (_vanToVanHSearchCtrl.text.isNotEmpty) {
                                  _vanToVanHSearchCtrl.clear();

                                  context.read<VanToVanHeaderBloc>().add(
                                      getVanToVanHeaderEvent(
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
                      context.read<VanToVanHeaderBloc>().add(
                          getVanToVanHeaderEvent(
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
                  value: ddfilterFieldsVanToVan[0].mode,
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
                  items: ddfilterFieldsVanToVan
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
                        .read<VanToVanHeaderBloc>()
                        .add(const ClearVanToVanHeaderEvent());
                    context.read<VanToVanHeaderBloc>().add(
                        getVanToVanHeaderEvent(
                            userID: widget.user.usrId ?? '',
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
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: BlocBuilder<VanToVanHeaderBloc, VanToVanHeaderState>(
                builder: (context, state) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        state.when(
                          getVanToVanHeaderState: (headers) => _selectedMode ==
                                  "P"
                              ? AppLocalizations.of(context)!.pendingApprovals
                              : _selectedMode == "AT"
                                  ? AppLocalizations.of(context)!
                                      .approvedRequests
                                  : AppLocalizations.of(context)!
                                      .rejectedRequests,
                          vanToVanHeaderFailedstate: () => _selectedMode == "P"
                              ? AppLocalizations.of(context)!.pendingApprovals
                              : _selectedMode == "AT"
                                  ? AppLocalizations.of(context)!
                                      .approvedRequests
                                  : AppLocalizations.of(context)!
                                      .rejectedRequests,
                        ),
                        style: countHeading(),
                      ),
                      Text(
                        state.when(
                          getVanToVanHeaderState: (headers) =>
                              headers == null ? "0" : headers.length.toString(),
                          vanToVanHeaderFailedstate: () => "0",
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
              child: BlocBuilder<VanToVanHeaderBloc, VanToVanHeaderState>(
                builder: (context, state) {
                  return state.when(
                      getVanToVanHeaderState: (pChange) => pChange == null
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                          : pChange.isEmpty
                              ? Center(
                                  child: Text(
                                    AppLocalizations.of(context)!.noDataFound,
                                    style: kfontstyle(),
                                  ),
                                )
                              : Column(
                                  children: [
                                    Expanded(
                                        child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: ListView.separated(
                                          itemBuilder: (context, index) =>
                                              GestureDetector(
                                                onTap: () {
                                                  context
                                                      .read<
                                                          NavigatetoBackCubit>()
                                                      .popFromScreen(false);
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              VanToVanApprovalDetails(
                                                                vanToVanHeader:
                                                                    pChange[
                                                                        index],
                                                                user:
                                                                    widget.user,
                                                                currentMode:
                                                                    _selectedMode,
                                                              )));
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
                                                              BorderRadius
                                                                  .circular(
                                                                      20)),
                                                    ),
                                                    SizedBox(
                                                      width: 10.w,
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            '${pChange[index].vvhTransId}',
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
                                                                '${pChange[index].vvhFromRot} - ',
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
                                                                  "${pChange[index].vvhToRot}",
                                                                  style: kfontstyle(
                                                                      fontSize:
                                                                          12.sp,
                                                                      color: const Color(
                                                                          0xff413434)),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          /*Text(
                                                        overflow: TextOverflow.ellipsis,
                                                        "${pChange[index].status}",
                                                        style: kfontstyle(
                                                            fontSize: 12.sp,
                                                            color: const Color(
                                                                0xff413434)),
                                                      ),*/
                                                          Text(
                                                            '${pChange[index].createdDate} ',
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
                                                        color: pChange[index]
                                                                    .approvalStatus!
                                                                    .isEmpty ||
                                                                pChange[index]
                                                                        .approvalStatus !=
                                                                    'Approved'
                                                            ? pChange[index]
                                                                        .approvalStatus ==
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
                                                          selectedLocale
                                                                      ?.languageCode ==
                                                                  "en"
                                                              ? pChange[index]
                                                                      .approvalStatus ??
                                                                  ''
                                                              : pChange[index]
                                                                      .approvalArStatus ??
                                                                  '',
                                                          style: kfontstyle(
                                                              fontSize: 10.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: pChange[index]
                                                                          .approvalStatus ==
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
                                          itemCount: pChange.length),
                                    ))
                                  ],
                                ),
                      vanToVanHeaderFailedstate: () => Center(
                            child: Text(
                              AppLocalizations.of(context)!.noDataAvailable,
                              style: kfontstyle(),
                            ),
                          ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
