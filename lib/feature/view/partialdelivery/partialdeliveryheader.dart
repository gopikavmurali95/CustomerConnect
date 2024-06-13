import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approvalstatusfilter/approvalfitermodel.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart';
import 'package:customer_connect/feature/state/bloc/partialdeliveryheader/partial_delivery_header_bloc.dart';
import 'package:customer_connect/feature/view/partialdelivery/partialdeliverydetails.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PartialDeliveryHeader extends StatefulWidget {
  final LoginUserModel user;
  const PartialDeliveryHeader({super.key, required this.user});

  @override
  State<PartialDeliveryHeader> createState() => _PartialDeliveryHeaderState();
}

List<ApprovalStatusFilterModel> filterFieldsPartialDelivery = [
  ApprovalStatusFilterModel(statusName: "Pending", mode: 'P'),
  ApprovalStatusFilterModel(statusName: "Action Taken", mode: 'AT'),
];

String _selectedeMode = 'P';
TextEditingController _SearchCtrl = TextEditingController();
Timer? debounce;

class _PartialDeliveryHeaderState extends State<PartialDeliveryHeader> {
  @override
  void initState() {
    context
        .read<PartialDeliveryHeaderBloc>()
        .add(const ClearPartialDeliveryHeaderEvent());
    context.read<PartialDeliveryHeaderBloc>().add(GetPartialDeliveryHeaderEvent(
        userID: widget.user.usrId!, mode: 'P', searchQuery: ''));
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
          "Partial Delivery",
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
                  controller: _SearchCtrl,
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
                                if (_SearchCtrl.text.isNotEmpty) {
                                  _SearchCtrl.clear();

                                  context.read<PartialDeliveryHeaderBloc>().add(
                                      GetPartialDeliveryHeaderEvent(
                                          userID: widget.user.usrId!,
                                          mode: _selectedeMode,
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
                      context.read<PartialDeliveryHeaderBloc>().add(
                          GetPartialDeliveryHeaderEvent(
                              userID: widget.user.usrId!,
                              mode: _selectedeMode,
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
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Container(
                height: 40,
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
                child: DropdownButtonFormField(
                  elevation: 0,
                  value: filterFieldsPartialDelivery[0].mode,
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
                  items: filterFieldsPartialDelivery
                      .map(
                        (e) => DropdownMenuItem(
                          value: e.mode,
                          child: Text(e.statusName),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    _selectedeMode = value!;
                    context
                        .read<PartialDeliveryHeaderBloc>()
                        .add(const ClearPartialDeliveryHeaderEvent());
                    context.read<PartialDeliveryHeaderBloc>().add(
                        GetPartialDeliveryHeaderEvent(
                            userID: widget.user.usrId!,
                            mode: value,
                            searchQuery: ''));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 30.h,
                width: MediaQuery.of(context).size.width,
                child: DropdownButtonFormField(
                  elevation: 0,
                  value: filterFieldsPartialDelivery[0].mode,
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
                  items: filterFieldsPartialDelivery
                      .map(
                        (e) => DropdownMenuItem(
                          value: e.mode,
                          child: Text(e.statusName),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    _selectedeMode = value!;

                    context
                        .read<PartialDeliveryHeaderBloc>()
                        .add(const ClearPartialDeliveryHeaderEvent());
                    context.read<PartialDeliveryHeaderBloc>().add(
                        GetPartialDeliveryHeaderEvent(
                            userID: widget.user.usrId!,
                            mode: value,
                            searchQuery: ''));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: BlocBuilder<PartialDeliveryHeaderBloc,
                  PartialDeliveryHeaderState>(
                builder: (context, state) {
                  return state.when(
                    getPartialDeliveryState: (header) => header == null
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
                                      header.length.toString(),
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
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    PArtialDeliveryDetails(
                                                  user: widget.user,
                                                  header: header[index],
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
                                                              header[index]
                                                                      .orderId ??
                                                                  '',
                                                              style:
                                                                  blueTextStyle()),
                                                          Row(
                                                            children: [
                                                              Text(
                                                                '${header[index].cusCode} - ',
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
                                                                    header[index]
                                                                            .cusName ??
                                                                        '',
                                                                    style:
                                                                        subTitleTextStyle()),
                                                              ),
                                                            ],
                                                          ),
                                                          Text(
                                                            header[index]
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
                                                        color: header[index]
                                                                    .dahApprovalStatus!
                                                                    .isEmpty ||
                                                                header[index]
                                                                        .dahApprovalStatus !=
                                                                    'Action Taken'
                                                            ? header[index]
                                                                        .dahApprovalStatus ==
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
                                                          header[index]
                                                                  .dahApprovalStatus ??
                                                              '',
                                                          style: kfontstyle(
                                                              fontSize: 10.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: header[index]
                                                                          .dahApprovalStatus ==
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
                                    itemCount: header.length),
                              ),
                            ],
                          ),
                    getPartialDeliveryFailed: () => Center(
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
