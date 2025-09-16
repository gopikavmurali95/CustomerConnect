// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/free_sample_approve_in_model/free_sample_approve_in_model.dart';
import 'package:customer_connect/feature/data/models/free_sample_approve_prd_model/free_sample_approve_prd_model.dart';
import 'package:customer_connect/feature/data/models/free_sample_header_model/free_sample_header_model.dart';
import 'package:customer_connect/feature/data/models/free_sample_reson_model/free_sample_reson_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/freesampleapprove/free_sample_approve_bloc.dart';
import 'package:customer_connect/feature/state/bloc/freesampledetail/free_sample_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/freesamplereason/free_sample_reasons_bloc.dart';

import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/l10n/app_localizations.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FreeSampleDetailListWidget extends StatefulWidget {
  final FreeSampleHeaderModel header;
  final LoginUserModel user;
  const FreeSampleDetailListWidget(
      {super.key, required this.header, required this.user});

  @override
  State<FreeSampleDetailListWidget> createState() =>
      _FreeSampleDetailListWidgetState();
}

List<String> selectedresons = [];
List<bool?> statuslist = [];
List<FreeSampleResonModel> availableresons = [];
List<FreeSampleApprovePrdModel?> fsProducs = [];

class _FreeSampleDetailListWidgetState
    extends State<FreeSampleDetailListWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            height: 30.h,
            width: double.infinity,
            color: const Color(0xfff5f5f5),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 4,
                    child: Text(
                      AppLocalizations.of(context)!.item,
                      style: boxHeading(),
                    ),
                  ),
                  /* SizedBox(
                              width: 135.w,
                            ), */
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Text(
                      AppLocalizations.of(context)!.uom,
                      style: boxHeading(),
                    ),
                  ),
                  /*  SizedBox(
                              width: 60.w,
                            ), */
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 0,
                    child: Text(
                      AppLocalizations.of(context)!.qty,
                      style: boxHeading(),
                    ),
                  )
                ],
              ),
            ),
          ),
          BlocConsumer<FreeSampleDetailBloc, FreeSampleDetailState>(
            listener: (context, state) {
              state.when(
                getFreeSampleDetailState: (details) {
                  if (details != null) {
                    statuslist /* length = details.length; */
                        = List.generate(details.length, (index) => null);
                    for (int i = 0; i < details.length; i++) {
                      if (widget.header.approvalStatus!.isNotEmpty) {
                        if (details[i].approvalStatus == 'Approved') {
                          statuslist[i] = true;
                        } else if (details[i].approvalStatus == 'Rejected') {
                          statuslist[i] = false;
                        } else {
                          statuslist[i] = null;
                        }
                      }
                    }
                    fsProducs = List.generate(details.length, (index) => null);

                    context.read<FreeSampleReasonsBloc>().add(
                        GetFreeSampleReasonsEvent(
                            rsntype: 'FS', userID: widget.user.usrId ?? ''));
                    // statuslist.clear();
                  }
                },
                freesampleDetailFailedState: () {},
              );
            },
            builder: (context, state) {
              return state.when(
                getFreeSampleDetailState: (details) => details == null
                    ? Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                        ),
                      )
                    : Expanded(
                        child: ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.only(
                                left: selectedLocale?.languageCode == 'en'
                                    ? 10
                                    : 45,
                                right: 10),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            details[index].prdCode ?? '',
                                            style: loadTextStyle(),
                                          ),
                                          Text(
                                              selectedLocale?.languageCode ==
                                                      'en'
                                                  ? details[index].prdName ?? ''
                                                  : details[index].prdName ??
                                                      '',
                                              style: subTitleTextStyle()),
                                        ],
                                      ),
                                    ),
                                    // SizedBox(
                                    //   width: 145.w,
                                    // ),
                                    Column(
                                      children: [
                                        Text(
                                          details[index].higherUom == '0' ||
                                                  details[index].higherUom ==
                                                      null
                                              ? "0"
                                              : details[index].higherUom ?? '0',
                                          style: subTitleTextStyle(),
                                        ),
                                        Text(
                                          details[index].lowerUom == '0' ||
                                                  details[index].lowerUom ==
                                                      null
                                              ? "0"
                                              : details[index].lowerUom ?? '0',
                                          style: subTitleTextStyle(),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      width:
                                          /* selectedLocale?.languageCode == 'en'
                                              ? */
                                          65.w /* : 60.w */,
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          details[index].higherQty!.isEmpty ||
                                                  details[index].higherQty ==
                                                      null
                                              ? "-"
                                              : details[index].higherQty ?? '',
                                          style: subTitleTextStyle(),
                                        ),
                                        Text(
                                          details[index].lowerQty!.isEmpty ||
                                                  details[index].lowerQty ==
                                                      null
                                              ? "-"
                                              : details[index].lowerQty ?? '',
                                          style: subTitleTextStyle(),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                widget.header.approvalStatus == 'Pending' ||
                                        widget.header.approvalStatus == ''
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Expanded(
                                            child: BlocConsumer<
                                                FreeSampleReasonsBloc,
                                                FreeSampleReasonsState>(
                                              listener: (context, state) {
                                                state.when(
                                                  getFreesampleReasonsState:
                                                      (resons) {
                                                    if (resons != null) {
                                                      selectedresons.clear();

                                                      availableresons.clear();
                                                      availableresons = [
                                                        FreeSampleResonModel(
                                                          rsnId: '-1',
                                                          rsnName: selectedLocale
                                                                      ?.languageCode ==
                                                                  'en'
                                                              ? 'Select reason'
                                                              : AppLocalizations
                                                                      .of(context)!
                                                                  .selectReason,
                                                          /*  rsnArName:
                                                              AppLocalizations.of(
                                                                      context)!
                                                                  .selectReason, */
                                                        )
                                                      ];

                                                      selectedresons =
                                                          List.generate(
                                                              details.length,
                                                              (index) => '-1');
                                                      availableresons
                                                          .addAll(resons);
                                                    }
                                                  },
                                                  freeSampleReasonsFailedState:
                                                      () {
                                                    selectedresons.clear();

                                                    availableresons.clear();
                                                    availableresons = [
                                                      FreeSampleResonModel(
                                                        rsnId: '-1',
                                                        rsnName: selectedLocale
                                                                    ?.languageCode ==
                                                                'en'
                                                            ? 'Select reason'
                                                            : AppLocalizations
                                                                    .of(context)!
                                                                .selectReason,
                                                        /*  rsnArName:
                                                              AppLocalizations.of(
                                                                      context)!
                                                                  .selectReason, */
                                                      )
                                                    ];

                                                    selectedresons =
                                                        List.generate(
                                                            details.length,
                                                            (index) => '-1');
                                                  },
                                                );
                                              },
                                              builder: (context, state) {
                                                return state.when(
                                                  getFreesampleReasonsState:
                                                      (resons) => resons ==
                                                                  null ||
                                                              availableresons
                                                                  .isEmpty
                                                          ? const ShimmerContainers(
                                                              height: 30,
                                                              width: 80,
                                                            )
                                                          : Transform.scale(
                                                              scale: 0.8,
                                                              child: Container(
                                                                height: 30.h,
                                                                // width: MediaQuery.of(context).size.width / 3,
                                                                decoration: BoxDecoration(
                                                                    color: Colors
                                                                        .white,
                                                                    border: Border.all(
                                                                        color: Colors
                                                                            .grey
                                                                            .shade200),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                    boxShadow: const [
                                                                      BoxShadow(
                                                                          
                                                                          color: Color(
                                                                              0xff00000050),
                                                                          blurRadius:
                                                                              0.4,
                                                                          spreadRadius:
                                                                              0.4)
                                                                    ]),
                                                                child:
                                                                    DropdownButtonFormField(
                                                                  elevation: 0,
                                                                  dropdownColor:
                                                                      Colors
                                                                          .white,
                                                                  value: availableresons[
                                                                              0]
                                                                          .rsnId ??
                                                                      '',
                                                                  style: kfontstyle(
                                                                      color: Colors
                                                                          .black),
                                                                  isExpanded:
                                                                      true,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    filled:
                                                                        true,
                                                                    fillColor:
                                                                        Colors
                                                                            .white,
                                                                    contentPadding: const EdgeInsets
                                                                        .symmetric(
                                                                        horizontal:
                                                                            10),
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10),
                                                                      borderSide:
                                                                          const BorderSide(
                                                                              color: Colors.transparent),
                                                                    ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10),
                                                                      borderSide:
                                                                          const BorderSide(
                                                                              color: Colors.transparent),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              10),
                                                                      borderSide:
                                                                          const BorderSide(
                                                                              color: Colors.transparent),
                                                                    ),
                                                                  ),
                                                                  items: availableresons.map(
                                                                      (FreeSampleResonModel
                                                                          item) {
                                                                    return DropdownMenuItem(
                                                                      value: item
                                                                          .rsnId,
                                                                      child:
                                                                          Text(
                                                                        overflow:
                                                                            TextOverflow.ellipsis,
                                                                        selectedLocale?.languageCode == 'en'
                                                                            ? item.rsnName ??
                                                                                ''
                                                                            : item.rsnName ??
                                                                                '',
                                                                        style: kfontstyle(
                                                                            fontSize:
                                                                                9.sp),
                                                                      ),
                                                                    );
                                                                  }).toList(),
                                                                  onChanged:
                                                                      (value) {
                                                                    selectedresons[
                                                                            index] =
                                                                        value ??
                                                                            '';
                                                                  },
                                                                ),
                                                              ),
                                                            ),
                                                  freeSampleReasonsFailedState:
                                                      () => Transform.scale(
                                                    scale: 0.8,
                                                    child: Container(
                                                      height: 30.h,
                                                      // width: MediaQuery.of(context).size.width / 3,
                                                      decoration: BoxDecoration(
                                                          color: Colors.white,
                                                          border: Border.all(
                                                              color: Colors.grey
                                                                  .shade200),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      10.0),
                                                          boxShadow: const [
                                                            BoxShadow(
                                                                
                                                                color: Color(
                                                                    0xff00000050),
                                                                blurRadius: 0.4,
                                                                spreadRadius:
                                                                    0.4)
                                                          ]),
                                                      child:
                                                          DropdownButtonFormField(
                                                        elevation: 0,
                                                        dropdownColor:
                                                            Colors.white,
                                                        value:
                                                            availableresons[0]
                                                                    .rsnId ??
                                                                '',
                                                        style: kfontstyle(
                                                            color:
                                                                Colors.black),
                                                        isExpanded: true,
                                                        decoration:
                                                            InputDecoration(
                                                          filled: true,
                                                          fillColor:
                                                              Colors.white,
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                      10),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            borderSide:
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .transparent),
                                                          ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            borderSide:
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .transparent),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10),
                                                            borderSide:
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .transparent),
                                                          ),
                                                        ),
                                                        items: availableresons.map(
                                                            (FreeSampleResonModel
                                                                item) {
                                                          return DropdownMenuItem(
                                                            value: item.rsnId,
                                                            child: Text(
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              selectedLocale
                                                                          ?.languageCode ==
                                                                      'en'
                                                                  ? item.rsnName ??
                                                                      ''
                                                                  : item.rsnName ??
                                                                      '',
                                                              style: kfontstyle(
                                                                  fontSize:
                                                                      9.sp),
                                                            ),
                                                          );
                                                        }).toList(),
                                                        onChanged: (value) {
                                                          selectedresons[
                                                                  index] =
                                                              value ?? '';
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                          Transform.scale(
                                            scale: 0.8,
                                            origin: const Offset(-10, 0),
                                            child: InkWell(
                                              onTap: () {
                                                statuslist[index] = true;
                                                fsProducs[index] =
                                                    FreeSampleApprovePrdModel(
                                                        fsaId: details[index]
                                                            .fsaId,
                                                        reasonId: '',
                                                        status: 'A');
                                                setState(() {});
                                              },
                                              child: Row(
                                                children: [
                                                  Radio(
                                                    fillColor:
                                                        WidgetStateProperty
                                                            .resolveWith<
                                                                Color>((Set<
                                                                    WidgetState>
                                                                states) {
                                                      return (statuslist[
                                                                  index] ==
                                                              true)
                                                          ? Colors
                                                              .green.shade300
                                                          : Colors.grey;
                                                    }),
                                                    /*  activeColor: isselected == false
                                                                                                                                                                                                    ? const Color(0xff0075ff)
                                                                                                                                                                                                    : Colors.grey, */
                                                    value: statuslist[index] ==
                                                            null
                                                        ? false
                                                        : statuslist[index] ==
                                                                true
                                                            ? true
                                                            : false,
                                                    groupValue: true,
                                                    onChanged: (value) {
                                                      statuslist[index] = true;
                                                      fsProducs[index] =
                                                          FreeSampleApprovePrdModel(
                                                              fsaId:
                                                                  details[index]
                                                                      .fsaId,
                                                              reasonId: '',
                                                              status: 'A');
                                                      setState(() {});
                                                    },
                                                  ),
                                                  Text(
                                                    AppLocalizations.of(
                                                            context)!
                                                        .approve,
                                                    style: kfontstyle(),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Transform.scale(
                                            scale: 0.8,
                                            origin: const Offset(-10, 0),
                                            child: InkWell(
                                              onTap: () {
                                                statuslist[index] = false;
                                                fsProducs[index] =
                                                    FreeSampleApprovePrdModel(
                                                        fsaId: details[index]
                                                            .fsaPrdId,
                                                        reasonId: '',
                                                        status: 'R');
                                                setState(() {});
                                              },
                                              child: Row(
                                                children: [
                                                  Radio(
                                                    fillColor:
                                                        WidgetStateProperty
                                                            .resolveWith<
                                                                Color>((Set<
                                                                    WidgetState>
                                                                states) {
                                                      return (statuslist[
                                                                      index] !=
                                                                  null &&
                                                              !statuslist[
                                                                  index]!)
                                                          ? Colors.red.shade300
                                                          : Colors.grey;
                                                    }),
                                                    /*  activeColor: isselected == false
                                                                                                                                                                                                    ? const Color(0xff0075ff)
                                                                                                                                                                                                    : Colors.grey, */
                                                    value: statuslist[index] ==
                                                            null
                                                        ? true
                                                        : statuslist[index] ==
                                                                true
                                                            ? true
                                                            : false,
                                                    groupValue: false,
                                                    onChanged: (value) {
                                                      statuslist[index] = false;
                                                      fsProducs[index] =
                                                          FreeSampleApprovePrdModel(
                                                              fsaId:
                                                                  details[index]
                                                                      .fsaId,
                                                              reasonId: '',
                                                              status: 'R');
                                                      setState(() {});
                                                    },
                                                  ),
                                                  Text(
                                                    AppLocalizations.of(
                                                            context)!
                                                        .reject,
                                                    style: kfontstyle(),
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    : AbsorbPointer(
                                        absorbing: true,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Expanded(
                                                child: details[index]
                                                            .approvalStatus ==
                                                        'Rejected'
                                                    ? Transform.scale(
                                                        scale: 0.9,
                                                        child: Container(
                                                          height: 32.h,
                                                          // width: 100,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  Colors.white,
                                                              border: Border.all(
                                                                  color: Colors
                                                                      .grey
                                                                      .shade200),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0),
                                                              boxShadow: const [
                                                                BoxShadow(
                                                                    color: Color(
                                                                        0xff00000050),
                                                                    blurRadius:
                                                                        0.4,
                                                                    spreadRadius:
                                                                        0.4)
                                                              ]),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .symmetric(
                                                                    vertical: 7,
                                                                    horizontal:
                                                                        1),
                                                            child: Text(
                                                              details[index].reason ==
                                                                          null ||
                                                                      details[index]
                                                                          .reason!
                                                                          .isEmpty
                                                                  ? "No reason found"
                                                                  : details[index]
                                                                          .reason ??
                                                                      '',
                                                              style:
                                                                  const TextStyle(
                                                                      fontSize:
                                                                          11),
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    : const SizedBox()),
                                            Transform.scale(
                                              scale: 0.8,
                                              origin: const Offset(-100, 0),
                                              child: InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    statuslist[index] = true;

                                                    setState(() {});
                                                  });
                                                },
                                                child: Row(
                                                  children: [
                                                    Radio(
                                                      fillColor:
                                                          WidgetStateProperty
                                                              .resolveWith<
                                                                  Color>((Set<
                                                                      WidgetState>
                                                                  states) {
                                                        return (statuslist[
                                                                    index] ==
                                                                true)
                                                            ? Colors
                                                                .green.shade300
                                                            : Colors.grey;
                                                      }),
                                                      /*  activeColor: isselected == false
                                                                                                                                                                                                      ? const Color(0xff0075ff)
                                                                                                                                                                                                      : Colors.grey, */
                                                      value: statuslist[
                                                                  index] ==
                                                              null
                                                          ? false
                                                          : statuslist[index] ==
                                                                  true
                                                              ? true
                                                              : false,
                                                      groupValue: true,
                                                      onChanged: (value) {
                                                        statuslist[index] =
                                                            false;

                                                        setState(() {});
                                                      },
                                                    ),
                                                    Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .approve,
                                                      style: kfontstyle(),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Transform.scale(
                                              scale: 0.8,
                                              origin: const Offset(-120, 0),
                                              child: InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    statuslist[index] = false;

                                                    setState(() {});
                                                  });
                                                },
                                                child: Row(
                                                  children: [
                                                    Radio(
                                                      fillColor:
                                                          WidgetStateProperty
                                                              .resolveWith<
                                                                  Color>((Set<
                                                                      WidgetState>
                                                                  states) {
                                                        return (statuslist[
                                                                        index] !=
                                                                    null &&
                                                                !statuslist[
                                                                    index]!)
                                                            ? Colors
                                                                .red.shade300
                                                            : Colors.grey;
                                                      }),
                                                      /*  activeColor: isselected == false
                                                                                                                                                                                                      ? const Color(0xff0075ff)
                                                                                                                                                                                                      : Colors.grey, */
                                                      value: statuslist[
                                                                  index] ==
                                                              null
                                                          ? true
                                                          : statuslist[index] ==
                                                                  true
                                                              ? true
                                                              : false,
                                                      groupValue: false,
                                                      onChanged: (value) {
                                                        statuslist[index] =
                                                            false;

                                                        setState(() {});
                                                      },
                                                    ),
                                                    Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .reject,
                                                      style: kfontstyle(),
                                                    )
                                                  ],
                                                ),
                                              ),
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
                          itemCount: details.length,
                        ),
                      ),
                freesampleDetailFailedState: () => Center(
                  child: Text(
                    AppLocalizations.of(context)!.noDataAvailable,
                    style: kfontstyle(),
                  ),
                ),
              );
            },
          ),
          SizedBox(
            height: 40.h,
            width: double.infinity,
            child: Column(
              children: [
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
                        child: Visibility(
                          visible: widget.header.approvalStatus == 'Pending' ||
                                  widget.header.approvalStatus!.isEmpty
                              ? true
                              : false,
                          child: MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: widget.header.approvalStatus == 'Pending' ||
                                    widget.header.approvalStatus!.isEmpty
                                ? Colors.green.shade300
                                : Colors.grey[300],
                            onPressed: () {
                              log(jsonEncode(selectedresons));
                              if (widget.header.approvalStatus == 'Pending' ||
                                  widget.header.approvalStatus!.isEmpty) {
                                if (statuslist.contains(null)) {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        if (Platform.isIOS) {
                                          return CupertinoAlertDialog(
                                            title: Text(
                                                AppLocalizations.of(context)!
                                                    .alert),
                                            content: Text(AppLocalizations.of(
                                                    context)!
                                                .pleaseMakeSureToApproveAndReject),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  // Navigator.pop(context);
                                                },
                                                child: Text(AppLocalizations.of(
                                                        context)!
                                                    .ok),
                                              ),
                                            ],
                                          );
                                        } else {
                                          return AlertDialog(
                                            title: Text(
                                                AppLocalizations.of(context)!
                                                    .alert),
                                            content: Text(AppLocalizations.of(
                                                    context)!
                                                .pleaseMakeSureToApproveAndReject),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                  // Navigator.pop(context);
                                                },
                                                child: Text(AppLocalizations.of(
                                                        context)!
                                                    .ok),
                                              ),
                                            ],
                                          );
                                        }
                                      });
                                } else if (checkrejectedstatus() == false) {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        if (Platform.isIOS) {
                                          return CupertinoAlertDialog(
                                            title: Text(
                                                AppLocalizations.of(context)!
                                                    .alert),
                                            content: Text(AppLocalizations.of(
                                                    context)!
                                                .youShouldApproveOrRejectAndSpecifyReason),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(AppLocalizations.of(
                                                        context)!
                                                    .ok),
                                              ),
                                            ],
                                          );
                                        } else {
                                          return AlertDialog(
                                            title: Text(
                                                AppLocalizations.of(context)!
                                                    .alert),
                                            content: Text(AppLocalizations.of(
                                                    context)!
                                                .youShouldApproveOrRejectAndSpecifyReason),
                                            actions: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(AppLocalizations.of(
                                                        context)!
                                                    .ok),
                                              ),
                                            ],
                                          );
                                        }
                                      });
                                } else {
                                  showCupertinoDialog(
                                      context: context,
                                      builder: (context) {
                                        if (Platform.isIOS) {
                                          return CupertinoAlertDialog(
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
                                                child: Text(AppLocalizations.of(
                                                        context)!
                                                    .cancel),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  // setState(() {});
                                                  List<FreeSampleApprovePrdModel>
                                                      finalprds = [];

                                                  /*  for (var item in fsProducs) {
                                              if (item != null) {
                                                finalprds.add(item);
                                              }
                                            }
 */
                                                  for (var i = 0;
                                                      i < fsProducs.length;
                                                      i++) {
                                                    if (fsProducs[i] != null) {
                                                      fsProducs[i]!.reasonId =
                                                          selectedresons[i];
                                                      finalprds
                                                          .add(fsProducs[i]!);
                                                    }
                                                  }
                                                  log(jsonEncode(finalprds));

                                                  context
                                                      .read<
                                                          FreeSampleApproveBloc>()
                                                      .add(
                                                          const FreesamplesubmitLoadingEvent());
                                                  context
                                                      .read<
                                                          FreeSampleApproveBloc>()
                                                      .add(
                                                        SubmitFreeSampleRequestEvent(
                                                          approve:
                                                              FreeSampleApproveInModel(
                                                                  headerId: widget
                                                                      .header
                                                                      .fshId,
                                                                  products:
                                                                      finalprds,
                                                                  userId: widget
                                                                      .user
                                                                      .usrId),
                                                        ),
                                                      );
                                                  Navigator.pop(context);
                                                },
                                                child: Text(AppLocalizations.of(
                                                        context)!
                                                    .proceed),
                                              ),
                                            ],
                                          );
                                        } else {
                                          return AlertDialog(
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
                                                child: Text(AppLocalizations.of(
                                                        context)!
                                                    .cancel),
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  // setState(() {});
                                                  List<FreeSampleApprovePrdModel>
                                                      finalprds = [];

                                                  /*  for (var item in fsProducs) {
                                              if (item != null) {
                                                finalprds.add(item);
                                              }
                                            }
 */
                                                  for (var i = 0;
                                                      i < fsProducs.length;
                                                      i++) {
                                                    if (fsProducs[i] != null) {
                                                      fsProducs[i]!.reasonId =
                                                          selectedresons[i];
                                                      finalprds
                                                          .add(fsProducs[i]!);
                                                    }
                                                  }
                                                  log(jsonEncode(finalprds));

                                                  context
                                                      .read<
                                                          FreeSampleApproveBloc>()
                                                      .add(
                                                          const FreesamplesubmitLoadingEvent());
                                                  context
                                                      .read<
                                                          FreeSampleApproveBloc>()
                                                      .add(
                                                        SubmitFreeSampleRequestEvent(
                                                          approve:
                                                              FreeSampleApproveInModel(
                                                                  headerId: widget
                                                                      .header
                                                                      .fshId,
                                                                  products:
                                                                      finalprds,
                                                                  userId: widget
                                                                      .user
                                                                      .usrId),
                                                        ),
                                                      );
                                                  Navigator.pop(context);
                                                },
                                                child: Text(AppLocalizations.of(
                                                        context)!
                                                    .proceed),
                                              ),
                                            ],
                                          );
                                        }
                                      });
                                }
                              }
                            },
                            child: Text(
                              AppLocalizations.of(context)!.confirm,
                              style: kfontstyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
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
      ),
    );
  }

  bool checkrejectedstatus() {
    // log(jsonEncode(_procechangeapproved));
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
