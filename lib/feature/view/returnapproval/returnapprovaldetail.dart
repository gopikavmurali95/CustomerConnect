import 'dart:async';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approval_reson_model/approval_reson_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/return_approval_header_model/return_approval_header_model.dart';
import 'package:customer_connect/feature/data/models/return_approve_in_model/return_approve_in_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalreasons/approval_reasons_bloc.dart';
import 'package:customer_connect/feature/state/bloc/approvereturnprod/approve_return_product_bloc.dart';
import 'package:customer_connect/feature/state/bloc/returnapproval/return_approval_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/returnapprovaldetail/return_approval_detail_bloc.dart';
import 'package:customer_connect/feature/state/cubit/approvalradio/aapproval_or_reject_radio_cubit.dart';
import 'package:customer_connect/feature/state/cubit/navigatetoback/navigateto_back_cubit.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../data/models/return_approval_product/ReturnApprovalProductModel.dart';

class ReturnApprovalDetailScreen extends StatefulWidget {
  final ReturnApprovalHeaderModel returnApprovel;
  final LoginUserModel user;
  final String currentMode;
  const ReturnApprovalDetailScreen(
      {super.key,
      required this.returnApprovel,
      required this.user,
      required this.currentMode});

  @override
  State<ReturnApprovalDetailScreen> createState() =>
      _ReturnApprovalDetailScreenState();
}

List<String> selectedresons = [];
List<bool?> statuslist = [];
List<ReturnApprovalProductModel?> _returnProducts = [];
bool isLoading = false;

int loadingCount = 0;
List<ApprovalResonModel> availableresons = [];
int approvedCount = 0;
int totalCount = 0;
TextEditingController _searchctrls = TextEditingController();
Timer? debounce;

class _ReturnApprovalDetailScreenState
    extends State<ReturnApprovalDetailScreen> {
  @override
  void initState() {
    _searchctrls.clear();
    approvedCount = 0;
    loadingCount = 0;
    context
        .read<ReturnApprovalDetailBloc>()
        .add(const ClearReturnDetailEvent());
    context.read<ReturnApprovalDetailBloc>().add(GetReturnApprovalDetailEvennt(
        reqID: widget.returnApprovel.rahId ?? '',
        mode: widget.returnApprovel.mode ?? '',
        searchQuery: ''));

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
            // if (_approvedCount != 0 && _approvedCount != _totalCount) {
            //   Future.delayed(const Duration(microseconds: 100), () {
            //     showPopAlert(context);
            //   });
            // } else {
            //   context.read<NavigatetoBackCubit>().popFromScreen(true);
            // }

            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          "${AppLocalizations.of(context)!.ret_urn} ${AppLocalizations.of(context)!.details}",
          style: appHeading(),
        ),
      ),
      body: BlocListener<NavigatetoBackCubit, NavigatetoBackState>(
        listener: (context, state) {
          state.when(
            navigateToBackScreen: (popfromscreen) {
              if (popfromscreen == true) {
                Navigator.pop(context);
                // context.read<NavigatetoBackCubit>().cancelPop(false);
              }
            },
          );
        },
        child: PopScope(
          canPop: true,
          onPopInvoked: (didPop) {
            context.read<ReturnApprovalHeaderBloc>().add(
                GetReturnApprovalHeaders(
                    rotID: widget.user.usrId ?? '',
                    mode: widget.currentMode,
                    searchQuery: ''));
          },
          child: Column(
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
                                    widget.returnApprovel.ithRequestNumber ??
                                        '',
                                    style: blueTextStyle()),
                                Row(
                                  children: [
                                    Text('${widget.returnApprovel.cusCode} - ',
                                        style: blueTextStyle()),
                                    Expanded(
                                      child: Text(
                                          overflow: TextOverflow.ellipsis,
                                          selectedLocale?.languageCode == 'en'
                                              ? widget.returnApprovel.cusName ??
                                                  ''
                                              : widget.returnApprovel
                                                      .arcusName ??
                                                  '',
                                          style: subTitleTextStyle()),
                                    ),
                                  ],
                                ),
                                Text(
                                  widget.returnApprovel.createdDate ?? '',
                                  style: kfontstyle(
                                      fontSize: 10.sp, color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // height: 10.h,
                            // width: 20.h,
                            decoration: BoxDecoration(
                              color: widget
                                      .returnApprovel.rahApprovalStatus!.isEmpty
                                  ? Colors.red[100]
                                  : Colors.green[100],
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 3),
                              child: Text(
                                widget.returnApprovel.rahApprovalStatus ?? '',
                                style: kfontstyle(fontSize: 9.sp),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 30.h,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    controller: _searchctrls,
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
                                  if (_searchctrls.text.isNotEmpty) {
                                    _searchctrls.clear();

                                    context
                                        .read<ReturnApprovalDetailBloc>()
                                        .add(GetReturnApprovalDetailEvennt(
                                            reqID:
                                                widget.returnApprovel.rahId ??
                                                    '',
                                            mode: widget.returnApprovel.mode ??
                                                '',
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
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 10),
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
                        context.read<ReturnApprovalDetailBloc>().add(
                            GetReturnApprovalDetailEvennt(
                                reqID: widget.returnApprovel.rahId ?? '',
                                mode: widget.returnApprovel.mode ?? '',
                                searchQuery: value.trim()));
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 30.h,
                width: double.infinity,
                color: const Color(0xfff5f5f5),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppLocalizations.of(context)!.item,
                          style: boxHeading()),
                      SizedBox(
                        width: 10.w,
                      ),
                      Row(
                        children: [
                          Text(AppLocalizations.of(context)!.uom,
                              style: boxHeading()),
                          SizedBox(
                            width: 50.w,
                          ),
                          Text(AppLocalizations.of(context)!.qty,
                              style: boxHeading())
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: BlocConsumer<ReturnApprovalDetailBloc,
                      ReturnApprovalDetailState>(
                listener: (context, state) {
                  state.when(
                    getReturnApprovelDetailState: (details) {
                      if (details != null) {
                        totalCount = details.length;
                        _returnProducts =
                            List.generate(details.length, (index) => null);
                        context.read<ApprovalReasonsBloc>().add(
                            const GetApprovalReasonsEvent(rsnType: 'rsnType'));
                        statuslist.clear();

                        statuslist /* length = details.length; */
                            = List.generate(details.length, (index) => null);

                        for (int i = 0; i < details.length; i++) {
                          if (details[i].radApprovalStatus!.isNotEmpty) {
                            approvedCount++;
                            if (details[i].radApprovalStatus == 'A') {
                              statuslist[i] = true;
                            } else {
                              statuslist[i] = false;
                            }
                          }
                        }
                      }
                    },
                    returnApprovalDetailFailedState: () {},
                  );
                },
                builder: (context, state) {
                  return state.when(
                    getReturnApprovelDetailState: (details) => details == null
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
                        : details.isEmpty
                            ? Center(
                                child: Text(
                                    AppLocalizations.of(context)!.noDataFound),
                              )
                            : ListView.separated(
                                shrinkWrap: true,
                                itemBuilder: (context, index) => BlocListener<
                                    ApproveReturnProductBloc,
                                    ApproveReturnProductState>(
                                  listener: (context, state) {
                                    state.when(
                                      approveReturnProductdSTatusState:
                                          (response) {
                                        if (response != null) {
                                          Navigator.pop(context);
                                          isLoading = false;
                                          if (response.mode == '1') {
                                            showCupertinoDialog(
                                              context: context,
                                              builder: (context) =>
                                                  CupertinoAlertDialog(
                                                title: Text(AppLocalizations.of(
                                                        context)!
                                                    .alert),
                                                content: Text(
                                                    "${AppLocalizations.of(context)!.productStatusUpdate} ${selectedLocale?.languageCode == 'en' ? response.status : response.arStatus} "),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                        AppLocalizations.of(
                                                                context)!
                                                            .ok),
                                                  ),
                                                ],
                                              ),
                                            );
                                          } else {
                                            statuslist[index] = null;
                                            setState(() {});
                                            Navigator.pop(context);
                                            showCupertinoDialog(
                                              context: context,
                                              builder: (context) =>
                                                  CupertinoAlertDialog(
                                                title: Text(AppLocalizations.of(
                                                        context)!
                                                    .alert),
                                                content: Text(
                                                    "${AppLocalizations.of(context)!.productStatusUpdate} ${response.status} ,${AppLocalizations.of(context)!.tryAgain}"),
                                                actions: [
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                        AppLocalizations.of(
                                                                context)!
                                                            .ok),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }
                                        }
                                      },
                                      approveReturnLoadingState: () {
                                        if (loadingCount == 0) {
                                          loadingCount = 1;
                                          approvedCount += 1;
                                          showCupertinoModalPopup(
                                              context: context,
                                              barrierDismissible: false,
                                              builder: (context) => SizedBox(
                                                    height:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .height,
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    child: const PopScope(
                                                      canPop: true,
                                                      child:
                                                          CupertinoActivityIndicator(
                                                        animating: true,
                                                        color: Colors.red,
                                                        radius: 30,
                                                      ),
                                                    ),
                                                  ));
                                        }
                                      },
                                      approvalFailedState: () {
                                        statuslist[index] = null;
                                        setState(() {});
                                        Navigator.pop(context);
                                        showCupertinoDialog(
                                          context: context,
                                          builder: (context) =>
                                              CupertinoAlertDialog(
                                            title: Text(
                                                AppLocalizations.of(context)!
                                                    .alert),
                                            content: Text(
                                                AppLocalizations.of(context)!
                                                    .somethingWentWrong),
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
                                          ),
                                        );
                                      },
                                    );
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
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
                                                      style: loadTextStyle()),
                                                  Text(
                                                      selectedLocale
                                                                  ?.languageCode ==
                                                              'en'
                                                          ? details[index]
                                                                  .prdName ??
                                                              ''
                                                          : details[index]
                                                                  .arprdName ??
                                                              '',
                                                      style:
                                                          subTitleTextStyle()),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Column(
                                                  children: [
                                                    Text(
                                                        details[index].huom ??
                                                            '',
                                                        style:
                                                            subTitleTextStyle()),
                                                    SizedBox(
                                                      height: 10.h,
                                                    ),
                                                    Text(
                                                        details[index].luom ??
                                                            '',
                                                        style:
                                                            subTitleTextStyle()),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: selectedLocale?.languageCode == 'en'?50.w:70.w,
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                        details[index]
                                                                .returnHQty ??
                                                            '',
                                                        style:
                                                            subTitleTextStyle()),
                                                    SizedBox(
                                                      height: 10.h,
                                                    ),
                                                    Text(
                                                      details[index]
                                                              .returnLQty ??
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
                                              ],
                                            )
                                          ],
                                        ),
                                        Transform.scale(
                                          scale: .9,
                                          origin: const Offset(450, 0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Expanded(
                                                child: BlocConsumer<
                                                    ApprovalReasonsBloc,
                                                    ApprovalReasonsState>(
                                                  listener: (context, state) {
                                                    state.when(
                                                      getApprovalResonsState:
                                                          (resons) {
                                                        if (resons != null) {
                                                          selectedresons
                                                              .clear();

                                                          availableresons
                                                              .clear();
                                                          availableresons = [
                                                            ApprovalResonModel(
                                                                rsnId: '-1',
                                                                rsnName: selectedLocale
                                                                            ?.languageCode ==
                                                                        'en'
                                                                    ? 'Select reason'
                                                                    : AppLocalizations.of(
                                                                            context)!
                                                                        .selectReason,
                                                                rsnArName: AppLocalizations.of(
                                                                        context)!
                                                                    .selectReason,
                                                                rsnType: 'null')
                                                          ];

                                                          selectedresons =
                                                              List.generate(
                                                                  details
                                                                      .length,
                                                                  (index) =>
                                                                      '-1');
                                                          availableresons
                                                              .addAll(resons);
                                                        }
                                                      },
                                                      getReasonsFailedState:
                                                          () {},
                                                    );
                                                  },
                                                  builder: (context, state) {
                                                    return state.when(
                                                      getApprovalResonsState:
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
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        30.h,
                                                                    // width: MediaQuery.of(context)
                                                                    //         .size
                                                                    //         .width /
                                                                    //     3,

                                                                    decoration: BoxDecoration(
                                                                        color: Colors
                                                                            .white,
                                                                        border: Border.all(
                                                                            color: Colors
                                                                                .grey.shade200),
                                                                        borderRadius:
                                                                            BorderRadius.circular(10.0),
                                                                        boxShadow: const [
                                                                          BoxShadow(
                                                                              // ignore: use_full_hex_values_for_flutter_colors
                                                                              color: Color(0xff00000050),
                                                                              blurRadius: 0.4,
                                                                              spreadRadius: 0.4)
                                                                        ]),
                                                                    child:
                                                                        DropdownButtonFormField(
                                                                      elevation:
                                                                          0,
                                                                      dropdownColor:
                                                                          Colors
                                                                              .white,
                                                                      value:
                                                                          availableresons[0].rsnId ??
                                                                              '',
                                                                      style: kfontstyle(
                                                                          color:
                                                                              Colors.black),
                                                                      isExpanded:
                                                                          true,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        filled:
                                                                            true,
                                                                        fillColor:
                                                                            Colors.white,
                                                                        contentPadding: const EdgeInsets
                                                                            .symmetric(
                                                                            horizontal:
                                                                                10),
                                                                        border:
                                                                            OutlineInputBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                          borderSide:
                                                                              const BorderSide(color: Colors.transparent),
                                                                        ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                          borderSide:
                                                                              const BorderSide(color: Colors.transparent),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderRadius:
                                                                              BorderRadius.circular(10),
                                                                          borderSide:
                                                                              const BorderSide(color: Colors.transparent),
                                                                        ),
                                                                      ),
                                                                      items: availableresons.map(
                                                                          (ApprovalResonModel
                                                                              item) {
                                                                        return DropdownMenuItem(
                                                                          value:
                                                                              item.rsnId,
                                                                          child:
                                                                              Text(
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            selectedLocale?.languageCode == 'en'
                                                                                ? item.rsnName ?? ''
                                                                                : item.rsnArName ?? "",
                                                                            style:
                                                                                kfontstyle(fontSize: 9.sp),
                                                                          ),
                                                                        );
                                                                      }).toList(),
                                                                      onChanged:
                                                                          (value) {
                                                                        selectedresons[index] =
                                                                            value ??
                                                                                '';
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                      getReasonsFailedState:
                                                          () =>
                                                              const SizedBox(),
                                                    );
                                                  },
                                                ),
                                              ),
                                              BlocBuilder<
                                                  AapprovalOrRejectRadioCubit,
                                                  AapprovalOrRejectRadioState>(
                                                builder: (context, state) {
                                                  return Row(
                                                    children: [
                                                      Transform.scale(
                                                        scale: 0.8,
                                                        origin: const Offset(
                                                            -120, 0),
                                                        child: InkWell(
                                                          onTap: () {
                                                            setState(() {
                                                              statuslist[
                                                                          index] =
                                                                      true;
                                                                  loadingCount =
                                                                      0;
                                                                  setState(() {});
                                                          
                                                                  _returnProducts[
                                                                          index] =
                                                                      ReturnApprovalProductModel(
                                                                          radID: details[index]
                                                                              .radId,
                                                                          reason: selectedresons[
                                                                              index],
                                                                          status:
                                                                              "A");
                                                            });
                                                          },
                                                          child: Row(
                                                            children: [
                                                              Radio(
                                                                fillColor: MaterialStateProperty
                                                                    .resolveWith<
                                                                        Color>((Set<
                                                                            MaterialState>
                                                                        states) {
                                                                  return (statuslist[
                                                                              index] ==
                                                                          true)
                                                                      ? Colors
                                                                          .green
                                                                          .shade300
                                                                      : Colors
                                                                          .grey;
                                                                }),
                                                                /* activeColor: isselected == true
                                                                                                               : Colors.grey, */
                                                                value: statuslist[
                                                                            index] ==
                                                                        null
                                                                    ? false
                                                                    : statuslist[
                                                                                index] ==
                                                                            true
                                                                        ? true
                                                                        : false,
                                                                groupValue: true,
                                                                onChanged:
                                                                    (value) {
                                                                  statuslist[
                                                                          index] =
                                                                      true;
                                                                  loadingCount =
                                                                      0;
                                                                  setState(() {});
                                                          
                                                                  _returnProducts[
                                                                          index] =
                                                                      ReturnApprovalProductModel(
                                                                          radID: details[index]
                                                                              .radId,
                                                                          reason: selectedresons[
                                                                              index],
                                                                          status:
                                                                              "A");
                                                                },
                                                              ),
                                                              Text(
                                                                AppLocalizations.of(
                                                                        context)!
                                                                    .approve,
                                                                style:
                                                                    kfontstyle(),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Transform.scale(
                                                        scale: 0.8,
                                                        origin: const Offset(
                                                            -120, 0),
                                                        child: InkWell(
                                                          onTap: () {
                                                            setState(() {
                                                              statuslist[
                                                                          index] =
                                                                      false;
                                                          
                                                                  loadingCount =
                                                                      0;
                                                                  setState(() {});
                                                          
                                                                  _returnProducts[
                                                                          index] =
                                                                      ReturnApprovalProductModel(
                                                                          radID: details[index]
                                                                              .radId,
                                                                          reason: selectedresons[
                                                                              index],
                                                                          status:
                                                                              "R");
                                                            });
                                                          },
                                                          child: Row(
                                                            children: [
                                                              Radio(
                                                                fillColor: MaterialStateProperty
                                                                    .resolveWith<
                                                                        Color>((Set<
                                                                            MaterialState>
                                                                        states) {
                                                                  return (statuslist[index] !=
                                                                              null &&
                                                                          !statuslist[
                                                                              index]!)
                                                                      ? Colors.red
                                                                          .shade300
                                                                      : Colors
                                                                          .grey;
                                                                }),
                                                                /*  activeColor: isselected == false
                                                                                                                                                                                                    ? const Color(0xff0075ff)
                                                                                                                                                                                                    : Colors.grey, */
                                                                value: statuslist[
                                                                            index] ==
                                                                        null
                                                                    ? true
                                                                    : statuslist[
                                                                                index] ==
                                                                            true
                                                                        ? true
                                                                        : false,
                                                                groupValue: false,
                                                                onChanged:
                                                                    (value) {
                                                                  statuslist[
                                                                          index] =
                                                                      false;
                                                          
                                                                  loadingCount =
                                                                      0;
                                                                  setState(() {});
                                                          
                                                                  _returnProducts[
                                                                          index] =
                                                                      ReturnApprovalProductModel(
                                                                          radID: details[index]
                                                                              .radId,
                                                                          reason: selectedresons[
                                                                              index],
                                                                          status:
                                                                              "R");
                                                                },
                                                              ),
                                                              Text(
                                                                AppLocalizations.of(
                                                                        context)!
                                                                    .reject,
                                                                style:
                                                                    kfontstyle(),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  );
                                                },
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                separatorBuilder: (context, index) => Divider(
                                  color: Colors.grey[300],
                                ),
                                itemCount: details.length,
                              ),
                    returnApprovalDetailFailedState: () => Center(
                      child: Text(
                        AppLocalizations.of(context)!.noDataAvailable,
                        style: kfontstyle(),
                      ),
                    ),
                  );
                },
              )),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.15,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
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
                              color: widget.returnApprovel.rahApprovalStatus !=
                                      'Action Taken'
                                  ? Colors.green.shade300
                                  : Colors.grey[300],
                              onPressed: () {
                                if (widget.returnApprovel.rahApprovalStatus !=
                                    'Action Taken') {
                                  if (_returnProducts.contains(null)) {
                                    showCupertinoDialog(
                                      context: context,
                                      builder: (context) =>
                                          CupertinoAlertDialog(
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
                                            child: Text(
                                                AppLocalizations.of(context)!
                                                    .ok),
                                          ),
                                        ],
                                      ),
                                    );
                                  } else if (checkrejectedstatus() == false) {
                                    showCupertinoDialog(
                                      context: context,
                                      builder: (context) =>
                                          CupertinoAlertDialog(
                                        title: Text(
                                            AppLocalizations.of(context)!
                                                .alert),
                                        content: Text(
                                            AppLocalizations.of(context)!
                                                .selectReason),
                                        actions: [
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                                AppLocalizations.of(context)!
                                                    .ok),
                                          ),
                                        ],
                                      ),
                                    );
                                  } else {
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
                                              loadingCount = 0;
                                              setState(() {});
                                              Navigator.pop(context);
                                              context
                                                  .read<
                                                      ApproveReturnProductBloc>()
                                                  .add(
                                                      const AddApprovalLoadingEvent());

                                              context
                                                  .read<
                                                      ApproveReturnProductBloc>()
                                                  .add(
                                                    ApproveProductEvent(
                                                      approval: ReturnApproveInModel(
                                                          userID: widget
                                                              .returnApprovel
                                                              .userID,
                                                          returnID: widget
                                                              .returnApprovel
                                                              .rahId,
                                                          products:
                                                              _returnProducts),
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
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool checkrejectedstatus() {
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

const ddvalues = [
  DropdownMenuItem(
    value: '0',
    child: Text('Select Reason'),
  ),
  DropdownMenuItem(
    value: '1',
    child: Text('reason1'),
  ),
  DropdownMenuItem(
    value: '2',
    child: Text('reason2'),
  )
];
