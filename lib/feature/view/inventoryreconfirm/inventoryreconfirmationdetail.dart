import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/inventory_reconfirm_approve_in_model/inventory_reconfirm_approve_in_model.dart';
import 'package:customer_connect/feature/data/models/inventory_reconfirm_header_model/inventory_reconfirm_header_model.dart';
import 'package:customer_connect/feature/data/models/inventory_reconfirm_prd_model/inventory_reconfirm_prd_model.dart';
import 'package:customer_connect/feature/data/models/inventory_reconfirm_reason_model/inventory_reconfirm_reason_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/inventoryreconfirmapproval/inventory_reconfirm_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/inventoryreconfirmdetail/inventory_reconfirm_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/inventoryreconfirmheader/inventory_reconfirm_header_bloc.dart';
import 'package:customer_connect/feature/state/cubit/approvalradio/aapproval_or_reject_radio_cubit.dart';
import 'package:customer_connect/feature/state/cubit/inventoryreconfirmreasons/inventory_reconfirm_reasons_cubit.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InventoryReconfirmationDetailScreen extends StatefulWidget {
  final LoginUserModel user;
  final InventoryReconfirmHeaderModel header;
  final String currentMode;
  const InventoryReconfirmationDetailScreen(
      {super.key,
      required this.user,
      required this.header,
      required this.currentMode});

  @override
  State<InventoryReconfirmationDetailScreen> createState() =>
      _InventoryReconfirmationDetailScreenState();
}

List<InventoryReconfirmReasonModel> availableresons = [];
List<String> selectedresons = [];
List<InventoryReconfirmPrdModel?> approvedProducts = [];
List<bool?> statuslist = [];

class _InventoryReconfirmationDetailScreenState
    extends State<InventoryReconfirmationDetailScreen> {
  @override
  void initState() {
    context
        .read<InventoryReconfirmReasonsCubit>()
        .getinventoryReconfirmResons();
    context
        .read<InventoryReconfirmDetailBloc>()
        .add(const ClearInventoryReconfirmDetailEvent());
    context.read<InventoryReconfirmDetailBloc>().add(
        GetInventoryReconfirmDetailEvent(
            reqID: widget.header.iahId ?? '', searchQuery: ''));
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
          "Inventory Reconfirmation detail",
          style: appHeading(),
        ),
      ),
      body: PopScope(
        canPop:
            /* _approvedCount == 0 || _approvedCount == _totalcount ? true : */ true,
        onPopInvoked: (didPop) {
          context.read<InventoryReconfirmHeaderBloc>().add(
              GetInventoryReconfirmHeadersEvent(
                  mode: widget.currentMode, searchQuery: ''));
        },
        child: BlocConsumer<InventoryReconfirmApprovalBloc,
            InventoryReconfirmApprovalState>(
          listener: (context, state) {
            state.when(
              inventoryReconfirmApproveState: (status) {
                if (status != null) {
                  Navigator.pop(context);
                  showCupertinoDialog(
                    context: context,
                    builder: (context) => CupertinoAlertDialog(
                      title: const Text('Alert'),
                      content: Text("${status.status} "),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                          child: const Text('Ok'),
                        ),
                      ],
                    ),
                  );
                }
              },
              inventoryReconfirmApproveFailedState: () {
                Navigator.pop(context);
                showCupertinoDialog(
                  context: context,
                  builder: (context) => CupertinoAlertDialog(
                    title: const Text('Alert'),
                    content: Text(
                      "Something Went wrong , please try again later",
                      style: kfontstyle(),
                    ),
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
              inventoryReconfirmApproveLoadingState: () {
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
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 10,
                        decoration: BoxDecoration(
                            color: const Color(0xfffee8e0),
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.header.iahTransId ?? '',
                                    style: kfontstyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xff2C6B9E),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '${widget.header.rotCode} - ',
                                        style: kfontstyle(
                                          fontSize: 11.sp,
                                          color: const Color(0xff2C6B9E),
                                        ),
                                      ),
                                      Expanded(
                                        child: Text(
                                          overflow: TextOverflow.ellipsis,
                                          widget.header.usrName ?? '',
                                          style: kfontstyle(
                                              fontSize: 12.sp,
                                              color: const Color(0xff413434)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    widget.header.createdDate ?? '',
                                    style: kfontstyle(
                                        fontSize: 10.sp, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: widget.header.iahStatus!.isEmpty ||
                                        widget.header.iahStatus !=
                                            'Action Taken'
                                    ? widget.header.iahStatus == 'Rejected'
                                        ? Colors.red[300]
                                        : const Color(0xfff7f4e2)
                                    : const Color(0xffe3f7e2),
                                borderRadius: BorderRadius.circular(
                                  20,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 5),
                                child: Text(
                                  widget.header.iahStatus ?? '',
                                  style: kfontstyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          widget.header.iahStatus == 'Rejected'
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
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  height: 30.h,
                  width: double.infinity,
                  color: const Color(0xfff5f5f5),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Item',
                          style: kfontstyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black54),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Row(
                          children: [
                            Text(
                              'UOM',
                              style: kfontstyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54),
                            ),
                            SizedBox(
                              width: 20.w,
                            ),
                            Text(
                              'Qty',
                              style: kfontstyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54),
                            ),
                            /* SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'S.UOM',
                              style: kfontstyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Text(
                              'S.Qty',
                              style: kfontstyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black54),
                            ) */
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: BlocConsumer<InventoryReconfirmDetailBloc,
                      InventoryReconfirmDetailState>(
                    listener: (context, state) {
                      state.when(
                        getInventoryReconfirmDetailState: (details) {
                          if (details != null) {
                            // Navigator.pop(context);

                            // _totalcount = details.length;

                            approvedProducts =
                                List.generate(details.length, (index) => null);
                            statuslist.clear();

                            statuslist /* length = details.length; */
                                =
                                List.generate(details.length, (index) => null);

                            selectedresons =
                                List.generate(details.length, (index) => '-1');
                          }
                        },
                        inventoryReconfirmDetailFailedState: () {},
                      );
                    },
                    builder: (context, state) {
                      return state.when(
                        getInventoryReconfirmDetailState: (details) =>
                            details == null
                                ? Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 0),
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
                                : ListView.separated(
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      details[index].prdCode ??
                                                          '',
                                                      style: kfontstyle(
                                                        fontSize: 12.sp,
                                                        color: const Color(
                                                            0xff7b70ac),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    Text(
                                                      details[index].prdName ??
                                                          '',
                                                      style: kfontstyle(
                                                          fontSize: 12.sp,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color:
                                                              Colors.black54),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10.w,
                                              ),
                                              Row(
                                                children: [
                                                  /* Column(
                                                    children: [
                                                      Visibility(
                                                        visible: details[index]
                                                                        .iadHigherUom ==
                                                                    null ||
                                                                details[index]
                                                                    .iadHigherUom!
                                                                    .isEmpty
                                                            ? false
                                                            : true,
                                                        child: Text(
                                                          details[index]
                                                                  .iadHigherUom ??
                                                              '',
                                                          style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Colors
                                                                  .black54),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      Visibility(
                                                        visible: details[index]
                                                                        .iadLowerUom ==
                                                                    null ||
                                                                details[index]
                                                                    .iadLowerUom!
                                                                    .isEmpty
                                                            ? false
                                                            : true,
                                                        child: Text(
                                                          details[index]
                                                                  .iadLowerUom ??
                                                              '',
                                                          style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Colors
                                                                  .black54),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 10.w,
                                                  ),
                                                  Column(
                                                    children: [
                                                      Visibility(
                                                        visible: details[index]
                                                                        .iadHigherUom ==
                                                                    null ||
                                                                details[index]
                                                                    .iadHigherUom!
                                                                    .isEmpty
                                                            ? false
                                                            : true,
                                                        child: Text(
                                                          details[index]
                                                                  .iadHigherQty ??
                                                              '',
                                                          style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Colors
                                                                  .black54),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      Visibility(
                                                        visible: details[index]
                                                                        .iadLowerUom ==
                                                                    null ||
                                                                details[index]
                                                                    .iadLowerUom!
                                                                    .isEmpty
                                                            ? false
                                                            : true,
                                                        child: Text(
                                                          details[index]
                                                                  .iadLowerQty ??
                                                              '',
                                                          style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Colors
                                                                  .black54),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 35.w,
                                                  ), */
                                                  //Short
                                                  Column(
                                                    children: [
                                                      Visibility(
                                                        visible: details[index]
                                                                        .iadDescHuom ==
                                                                    null ||
                                                                details[index]
                                                                    .iadDescHuom!
                                                                    .isEmpty
                                                            ? false
                                                            : true,
                                                        child: Text(
                                                          details[index]
                                                                  .iadDescHuom ??
                                                              '',
                                                          style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Colors
                                                                  .black54),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      Visibility(
                                                        visible: details[index]
                                                                        .iadDescLuom ==
                                                                    null ||
                                                                details[index]
                                                                    .iadDescLuom!
                                                                    .isEmpty
                                                            ? false
                                                            : true,
                                                        child: Text(
                                                          details[index]
                                                                  .iadDescLuom ??
                                                              '',
                                                          style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Colors
                                                                  .black54),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: 35.w,
                                                  ),
                                                  Column(
                                                    children: [
                                                      Visibility(
                                                        visible: details[index]
                                                                        .iadDescHuom ==
                                                                    null ||
                                                                details[index]
                                                                    .iadDescHuom!
                                                                    .isEmpty
                                                            ? false
                                                            : true,
                                                        child: Text(
                                                          details[index]
                                                                  .iadDescHQty ??
                                                              '',
                                                          style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Colors
                                                                  .black54),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      Visibility(
                                                        visible: details[index]
                                                                        .iadDescLuom ==
                                                                    null ||
                                                                details[index]
                                                                    .iadDescLuom!
                                                                    .isEmpty
                                                            ? false
                                                            : true,
                                                        child: Text(
                                                          details[index]
                                                                  .iadDescLQty ??
                                                              '',
                                                          style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: Colors
                                                                  .black54),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 5.h,
                                          ),
                                          Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: BlocConsumer<
                                                        InventoryReconfirmReasonsCubit,
                                                        InventoryReconfirmReasonsState>(
                                                      listener:
                                                          (context, state) {
                                                        state.when(
                                                          getInventoryReconfirmResonsState:
                                                              (resons) {
                                                            if (resons !=
                                                                null) {
                                                              selectedresons
                                                                  .clear();
                                                              availableresons
                                                                  .clear();
                                                              availableresons =
                                                                  [
                                                                InventoryReconfirmReasonModel(
                                                                  rsnId: '-1',
                                                                  rsnName:
                                                                      'Select reason',
                                                                )
                                                              ];

                                                              selectedresons =
                                                                  List.generate(
                                                                      details
                                                                          .length,
                                                                      (index) =>
                                                                          '-1');

                                                              availableresons
                                                                  .addAll(
                                                                      resons);
                                                            }
                                                          },
                                                          inventoryReconfirmReasonsFailedState:
                                                              () {},
                                                        );
                                                      },
                                                      builder:
                                                          (context, state) {
                                                        return state.when(
                                                          getInventoryReconfirmResonsState:
                                                              (resons) => resons ==
                                                                          null ||
                                                                      availableresons
                                                                          .isEmpty
                                                                  ? const ShimmerContainers(
                                                                      height:
                                                                          30,
                                                                      width: 80,
                                                                    )
                                                                  : Card(
                                                                      surfaceTintColor:
                                                                          Colors
                                                                              .white,
                                                                      color: Colors
                                                                          .white,
                                                                      shadowColor: Colors
                                                                          .grey
                                                                          .shade300,
                                                                      child:
                                                                          SizedBox(
                                                                        height:
                                                                            35.h,
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsets
                                                                              .symmetric(
                                                                              horizontal: 5),
                                                                          child:
                                                                              ButtonTheme(
                                                                            alignedDropdown:
                                                                                true,
                                                                            child:
                                                                                DropdownButtonFormField(
                                                                              isExpanded: true,
                                                                              // elevation:
                                                                              //     16,
                                                                              dropdownColor: Colors.white,
                                                                              value: availableresons[0].rsnId ?? '',
                                                                              style: kfontstyle(color: Colors.black),
                                                                              decoration: const InputDecoration(
                                                                                // filled:
                                                                                //     true,
                                                                                // fillColor:
                                                                                //     Colors
                                                                                //         .grey[100],
                                                                                border: /* OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.grey[100]!)) */
                                                                                    InputBorder.none,
                                                                              ),
                                                                              items: availableresons.map((InventoryReconfirmReasonModel item) {
                                                                                return DropdownMenuItem(
                                                                                  value: item.rsnId,
                                                                                  child: Text(
                                                                                    overflow: TextOverflow.ellipsis,
                                                                                    item.rsnName ?? '',
                                                                                    style: kfontstyle(fontSize: 10.sp),
                                                                                  ),
                                                                                );
                                                                              }).toList(),
                                                                              onChanged: (value) {
                                                                                selectedresons[index] = value ?? '';

                                                                                if (statuslist[index] == false) {
                                                                                  approvedProducts[index] = InventoryReconfirmPrdModel(
                                                                                    reason: selectedresons[index],
                                                                                    iadId: details[index].iadId,
                                                                                    status: "R",
                                                                                  );
                                                                                } else {
                                                                                  approvedProducts[index] = InventoryReconfirmPrdModel(
                                                                                    reason: "",
                                                                                    iadId: details[index].iadId,
                                                                                    status: "A",
                                                                                  );
                                                                                }
                                                                              },
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                          inventoryReconfirmReasonsFailedState:
                                                              () =>
                                                                  const SizedBox(),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                  // SizedBox(
                                                  //   width: 10.w,
                                                  // ),

                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      BlocBuilder<
                                                          AapprovalOrRejectRadioCubit,
                                                          AapprovalOrRejectRadioState>(
                                                        builder:
                                                            (context, state) {
                                                          return Row(
                                                            children: [
                                                              Transform.scale(
                                                                scale: 0.8,
                                                                child: Row(
                                                                  children: [
                                                                    Radio(
                                                                      fillColor: MaterialStateProperty.resolveWith<
                                                                          Color>((Set<
                                                                              MaterialState>
                                                                          states) {
                                                                        return (statuslist[index] ==
                                                                                true)
                                                                            ? const Color(0xff0075ff)
                                                                            : Colors.grey;
                                                                      }),
                                                                      /* activeColor: isselected == true
                                                                                                                                                                        ? const Color(0xff0075ff)
                                                                                                                                                                        : Colors.grey, */
                                                                      value: statuslist[index] ==
                                                                              null
                                                                          ? false
                                                                          : statuslist[index] == true
                                                                              ? true
                                                                              : false,
                                                                      groupValue:
                                                                          true,
                                                                      onChanged:
                                                                          (value) {
                                                                        statuslist[index] =
                                                                            true;

                                                                        setState(
                                                                            () {});
                                                                        approvedProducts[index] =
                                                                            InventoryReconfirmPrdModel(
                                                                          reason:
                                                                              "",
                                                                          iadId:
                                                                              details[index].iadId,
                                                                          status:
                                                                              "A",
                                                                        );
                                                                      },
                                                                    ),
                                                                    Text(
                                                                      'Approve',
                                                                      style:
                                                                          kfontstyle(),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                              Transform.scale(
                                                                scale: 0.8,
                                                                child: Row(
                                                                  children: [
                                                                    Radio(
                                                                      fillColor: MaterialStateProperty.resolveWith<
                                                                          Color>((Set<
                                                                              MaterialState>
                                                                          states) {
                                                                        return (statuslist[index] != null &&
                                                                                !statuslist[index]!)
                                                                            ? const Color(0xff0075ff)
                                                                            : Colors.grey;
                                                                      }),
                                                                      /*  activeColor: isselected == false
                                                                                                                                                                        ? const Color(0xff0075ff)
                                                                                                                                                                        : Colors.grey, */
                                                                      value: statuslist[index] ==
                                                                              null
                                                                          ? true
                                                                          : statuslist[index] == true
                                                                              ? true
                                                                              : false,
                                                                      groupValue:
                                                                          false,
                                                                      onChanged:
                                                                          (value) {
                                                                        statuslist[index] =
                                                                            false;

                                                                        setState(
                                                                            () {});
                                                                        approvedProducts[index] =
                                                                            InventoryReconfirmPrdModel(
                                                                          reason:
                                                                              selectedresons[index],
                                                                          iadId:
                                                                              details[index].iadId,
                                                                          status:
                                                                              "R",
                                                                        );
                                                                      },
                                                                    ),
                                                                    Text(
                                                                      'Reject',
                                                                      style:
                                                                          kfontstyle(),
                                                                    )
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          );
                                                        },
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    separatorBuilder: (context, index) =>
                                        Divider(
                                      color: Colors.grey[300],
                                    ),
                                    itemCount: details.length,
                                  ),
                        inventoryReconfirmDetailFailedState: () => Center(
                          child: Text(
                            'No Data Available',
                            style: kfontstyle(),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 40.h,
                  width: double.infinity,
                  child: Column(
                    children: [
                      /*  Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: TextFormField(
                          controller: _remarksctrls,
                          enabled: widget.disputenote.status == 'Pending'
                              ? true
                              : false,
                          decoration: InputDecoration(
                            hintText: 'Remarks',
                            hintStyle: kfontstyle(
                              fontSize: 12.sp,
                              color: widget.disputenote.status == 'Pending'
                                  ? Colors.red.shade300
                                  : Colors.grey,
                            ),
                            border: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey[300]!),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey[300]!),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey[300]!),
                            ),
                          ),
                        ),
                      ), */

                      /* widget.scheduledreturn.status == "Pending"
                          ? Expanded(
                              child: 
                            )
                          : /* const SizedBox(height: ,) */ const Spacer(), */
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            const Flexible(
                                flex: 1, fit: FlexFit.tight, child: SizedBox()),
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
                                color: widget.header.iahStatus == 'Pending'
                                    ? Colors.green.shade300
                                    : Colors.grey[300],
                                onPressed: () {
                                  if (widget.header.iahStatus == 'Pending') {
                                    if (approvedProducts.contains(null)) {
                                      showCupertinoDialog(
                                        context: context,
                                        builder: (context) =>
                                            CupertinoAlertDialog(
                                          title: const Text('Alert'),
                                          content: const Text(
                                              "Please make sure you have approved or rejected all the products"),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                // Navigator.pop(context);
                                              },
                                              child: const Text('Ok'),
                                            ),
                                          ],
                                        ),
                                      );
                                    } else if (checkrejectedstatus() == false) {
                                      showCupertinoDialog(
                                        context: context,
                                        builder: (context) =>
                                            CupertinoAlertDialog(
                                          title: const Text('Alert'),
                                          content: const Text(
                                              "You should do approve or reject for all the items listed here.In case of rejection please specify the resaon."),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                // Navigator.pop(context);
                                              },
                                              child: const Text('Ok'),
                                            ),
                                          ],
                                        ),
                                      );
                                    } else {
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
                                                setState(() {});
                                                Navigator.pop(context);
                                                log(jsonEncode(
                                                    InventoryReconfirmApproveInModel(
                                                        products:
                                                            approvedProducts,
                                                        reqId:
                                                            widget.header.iahId,
                                                        userId: widget
                                                            .header.iahUsrId)));
                                                context
                                                    .read<
                                                        InventoryReconfirmApprovalBloc>()
                                                    .add(
                                                        const InventoryReconfirmLoadingEvent());
                                                context
                                                    .read<
                                                        InventoryReconfirmApprovalBloc>()
                                                    .add(ApproveInventoryReconfirmEvent(
                                                        approve: InventoryReconfirmApproveInModel(
                                                            products:
                                                                approvedProducts,
                                                            reqId: widget
                                                                .header.iahId,
                                                            userId: widget
                                                                .header
                                                                .iahUsrId)));
                                              },
                                              child: const Text('Proceed'),
                                            ),
                                          ],
                                        ),
                                      );
                                    }
                                  }
                                },
                                child: Text(
                                  'Confirm',
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
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  bool checkrejectedstatus() {
    log(jsonEncode(approvedProducts));
    int index = statuslist.indexWhere((element) => element == false);
    if (index < 0) {
      return true;
    } else if (selectedresons[index].isNotEmpty &&
        selectedresons[index] != "-1") {
      return true;
    } else {
      return false;
    }
  }
}
