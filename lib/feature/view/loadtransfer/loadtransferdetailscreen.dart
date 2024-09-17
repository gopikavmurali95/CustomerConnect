import 'dart:async';
import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/load_transfer_approval_header_model/load_transfer_approval_header_model.dart';
import 'package:customer_connect/feature/data/models/load_transfer_approval_in_model/load_transfer_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/load_transfer_prd_model/load_transfer_prd_model.dart';
import 'package:customer_connect/feature/data/models/load_transfer_product_model/load_transfer_product_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/loadtransferapproval/load_transfer_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/loadtransferdetail/load_transfer_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/loadtransferheader/load_transfer_header_bloc.dart';
import 'package:customer_connect/feature/state/cubit/approvalradio/aapproval_or_reject_radio_cubit.dart';
import 'package:customer_connect/feature/state/cubit/navigatetoback/navigateto_back_cubit.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoadTransferDetailScreen extends StatefulWidget {
  final LoginUserModel user;
  final LoadTransferApprovalHeaderModel header;
  final String currentMode;
  const LoadTransferDetailScreen(
      {super.key,
      required this.user,
      required this.header,
      required this.currentMode});

  @override
  State<LoadTransferDetailScreen> createState() =>
      _LoadTransferDetailScreenState();
}

List<dynamic> selectedresons = [];
List<bool?> statuslist = [];
bool isLoading = false;
List<LoadTransferProductModel?> approvedProducts = [];
final _loadtransDetailCtrl = TextEditingController();
Timer? debounce;
int _responsecount = 0;
int loadingCount = 0;
int approvedCount = 0;
int totalCount = 0;
List<LoadTransferPrdModel?> _loadprducts = [];

class _LoadTransferDetailScreenState extends State<LoadTransferDetailScreen> {
  @override
  void initState() {
    _loadtransDetailCtrl.clear();
    approvedCount = 0;
    _responsecount = 1;
    context
        .read<LoadTransferDetailBloc>()
        .add(const ClearLoadTransferDetailEvent());
    context.read<LoadTransferDetailBloc>().add(GetAllLoadTransferDetailEvent(
        reqID: widget.header.ltrId ?? '', searchQuery: ""));
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
            context.read<LoadTransferHeaderBloc>().add(
                GetAllLoadTransferHeadersEvent(
                    userID: widget.header.userID ?? '',
                    mode: widget.currentMode,
                    searchQuery: ""));

            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          "${AppLocalizations.of(context)!.load_transfer} ${AppLocalizations.of(context)!.details}",
          style: appHeading(),
        ),
      ),
      body: PopScope(
        canPop:
            /* _approvedCount == 0 || _approvedCount == _totalCount ? true : */ true,
        onPopInvoked: (didPop) {
          // if (_approvedCount != 0 && _approvedCount != _totalCount) {
          context.read<LoadTransferHeaderBloc>().add(
              GetAllLoadTransferHeadersEvent(
                  userID: widget.header.userID ?? '',
                  mode: widget.currentMode,
                  searchQuery: ""));

          //   Future.delayed(const Duration(microseconds: 100), () {
          //     showPopAlert(context);
          //   });
          // } else {
          //   log("$_approvedCount / $_totalCount");
          //   context.read<NavigatetoBackCubit>().popFromScreen(true);
          //   return;
          // }
        },
        child: BlocListener<NavigatetoBackCubit, NavigatetoBackState>(
          listener: (context, state) {
            state.when(
              navigateToBackScreen: (popfromscreen) {
                if (popfromscreen == true) {
                  Navigator.pop(context);
                }
              },
            );
          },
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(children: [
                  Container(
                    height: 70,
                    width: 10,
                    decoration: BoxDecoration(
                      color: const Color(0xfffee8e0),
                      borderRadius: BorderRadius.circular(20),
                    ),
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
                                widget.header.ltrReqNo ?? '',
                                style: kfontstyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xff2C6B9E),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    overflow: TextOverflow.ellipsis,
                                    "${widget.header.rotName} - ",
                                    style: kfontstyle(
                                        fontSize: 12.sp,
                                        color: const Color(0xff2C6B9E)),
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
                            color: widget.header.ltrApprovalStatus!.isEmpty ||
                                    widget.header.ltrApprovalStatus !=
                                        'Approved'
                                ? widget.header.ltrApprovalStatus == 'Rejected'
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
                              selectedLocale?.languageCode == "en"
                                  ? widget.header.ltrApprovalStatus ?? ''
                                  : widget.header.ltrArApprovalStatus ?? '',
                              style: kfontstyle(
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.w400,
                                  color: widget.header.ltrApprovalStatus ==
                                          'Rejected'
                                      ? Colors.white54
                                      : Colors.black54),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ]),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 30.h,
                  width: MediaQuery.of(context).size.width,
                  child: TextFormField(
                    controller: _loadtransDetailCtrl,
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
                                  if (_loadtransDetailCtrl.text.isNotEmpty) {
                                    _loadtransDetailCtrl.clear();
                                    context.read<LoadTransferDetailBloc>().add(
                                        const ClearLoadTransferDetailEvent());
                                    context.read<LoadTransferDetailBloc>().add(
                                        GetAllLoadTransferDetailEvent(
                                            reqID: widget.header.ltrId ?? '',
                                            searchQuery: ""));
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
                        context.read<LoadTransferDetailBloc>().add(
                            GetAllLoadTransferDetailEvent(
                                reqID: widget.header.ltrId ?? '',
                                searchQuery: value.trim()));
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 30.h,
                      width: double.infinity,
                      color: const Color(0xfff5f5f5),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppLocalizations.of(context)!.item,
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
                                  AppLocalizations.of(context)!.uom,
                                  style: kfontstyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54),
                                ),
                                SizedBox(
                                  width: 40.w,
                                ),
                                Text(
                                  AppLocalizations.of(context)!.qty,
                                  style: kfontstyle(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: BlocConsumer<LoadTransferDetailBloc,
                            LoadTransferDetailState>(
                      listener: (context, state) {
                        state.when(
                          getLoadTransferDetailState: (details) {
                            if (details != null) {
                              totalCount = details.length;

                              _loadprducts = List.generate(
                                  details.length, (index) => null);
                              /*  context.read<ApprovalReasonsBloc>().add(
                                        const GetApprovalReasonsEvent(rsnType: 'rsnType')); */
                              if (statuslist.length != details.length) {
                                statuslist.clear();

                                statuslist = List.generate(
                                    details.length, (index) => null);
                              }

                              for (int i = 0; i < details.length; i++) {
                                if (details[i].status!.isNotEmpty) {
                                  if (details[i].status == 'Approved') {
                                    statuslist[i] = true;
                                  } else if (details[i].status == 'Rejeced') {
                                    statuslist[i] = false;
                                  } else {
                                    statuslist[i] = null;
                                  }
                                }
                              }
                            }
                          },
                          loadTransferDetailFailedState: () {},
                        );
                      },
                      builder: (context, state) {
                        return state.when(
                          getLoadTransferDetailState: (details) => details ==
                                  null
                              ? Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
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
                                  itemBuilder: (context, index) => BlocListener<
                                      LoadTransferApprovalBloc,
                                      LoadTransferApprovalState>(
                                    listener: (context, state) {
                                      state.when(
                                        approveLoadTransferState: (response) {
                                          if (response != null) {
                                            if (_responsecount == 0) {
                                              approvedCount += 1;
                                              _responsecount = 1;
                                            }
                                            Navigator.pop(context);
                                            isLoading = false;

                                            showCupertinoDialog(
                                              context: context,
                                              builder: (context) =>
                                                  CupertinoAlertDialog(
                                                title: Text(AppLocalizations.of(
                                                        context)!
                                                    .alert),
                                                content: Text(
                                                    " ${selectedLocale?.languageCode == 'en' ? 'Your request has been successfully actioned' : 'لقد تم تنفيذ طلبك بنجاح'} "),
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
                                          }
                                        },
                                        loadTransferApprovalLoadingState: () {
                                          if (loadingCount == 0) {
                                            loadingCount = 1;
                                            _responsecount = 0;

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
                                        loadTransferApprovalFailedState: () {
                                          log(loadingCount.toString());
                                          if (_responsecount == 0) {
                                            // _approvedCount = 5;
                                            // _approvedCount++;
                                            statuslist[index] = null;
                                            _responsecount = 1;
                                          }

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
                                                  child: Text(
                                                      AppLocalizations.of(
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
                                                      style: kfontstyle(
                                                        fontSize: 12.sp,
                                                        color: const Color(
                                                            0xff7b70ac),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    Text(
                                                      selectedLocale
                                                                  ?.languageCode ==
                                                              "en"
                                                          ? details[index]
                                                                  .prdName ??
                                                              ''
                                                          : details[index]
                                                                  .prdArName ??
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
                                                  Column(
                                                    children: [
                                                      Text(
                                                        details[index]
                                                                    .ldrOffloadHuom!
                                                                    .isEmpty ||
                                                                details[index]
                                                                        .ldrOffloadHuom ==
                                                                    null
                                                            ? "-"
                                                            : details[index]
                                                                    .ldrOffloadHuom ??
                                                                "",
                                                        style: kfontstyle(
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black54),
                                                      ),
                                                      // Text(
                                                      //   details[index]
                                                      //           .ldrOffloadHuom ??
                                                      //       '',
                                                      //   style: kfontstyle(
                                                      //       fontSize: 12.sp,
                                                      //       fontWeight:
                                                      //           FontWeight.w400,
                                                      //       color:
                                                      //           Colors.black54),
                                                      // ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      Text(
                                                        details[index]
                                                                    .ldrOffloadLuom!
                                                                    .isEmpty ||
                                                                details[index]
                                                                        .ldrOffloadLuom ==
                                                                    null
                                                            ? "-"
                                                            : details[index]
                                                                    .ldrOffloadLuom ??
                                                                "",
                                                        style: kfontstyle(
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black54),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    width: selectedLocale
                                                                ?.languageCode ==
                                                            'en'
                                                        ? 50.w
                                                        : 70.w,
                                                  ),
                                                  Column(
                                                    children: [
                                                      Text(
                                                        details[index]
                                                                    .ldrOffloadHQty!
                                                                    .isEmpty ||
                                                                details[index]
                                                                        .ldrOffloadHQty ==
                                                                    null
                                                            ? "0"
                                                            : details[index]
                                                                    .ldrOffloadHQty ??
                                                                "",
                                                        style: kfontstyle(
                                                            fontSize: 12.sp,
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color:
                                                                Colors.black54),
                                                      ),
                                                      SizedBox(
                                                        height: 10.h,
                                                      ),
                                                      Text(
                                                        details[index]
                                                                    .ldrOffloadLQty!
                                                                    .isEmpty ||
                                                                details[index]
                                                                        .ldrOffloadLQty ==
                                                                    null
                                                            ? "0"
                                                            : details[index]
                                                                    .ldrOffloadLQty ??
                                                                "",
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
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              BlocBuilder<
                                                  AapprovalOrRejectRadioCubit,
                                                  AapprovalOrRejectRadioState>(
                                                builder: (context, state) {
                                                  return Row(
                                                    children: [
                                                      Transform.scale(
                                                        scale: 0.8,
                                                        child: InkWell(
                                                          onTap: () {
                                                            setState(() {
                                                              statuslist[
                                                                  index] = true;
                                                              loadingCount = 0;
                                                              setState(() {});

                                                              _loadprducts[
                                                                      index] =
                                                                  LoadTransferPrdModel(
                                                                      ldrId: details[
                                                                              index]
                                                                          .ldrId,
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
                                                                groupValue:
                                                                    true,
                                                                onChanged:
                                                                    (value) {
                                                                  /*  showCupertinoDialog(
                                                                    context: context,
                                                                    builder: (context) =>
                                                                        CupertinoAlertDialog(
                                                                      title: const Text(
                                                                          'Alert'),
                                                                      content: const Text(
                                                                          "Do you Want to Approve this product"),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed:
                                                                              () {
                                                                            setState(
                                                                                () {});
                                                                            Navigator.pop(
                                                                                context);
                                                                          },
                                                                          child: const Text(
                                                                              'Cancel'),
                                                                        ),
                                                                        TextButton(
                                                                          onPressed:
                                                                              () {
                                                                           
                                                                          },
                                                                          child: const Text(
                                                                              'Proceed'),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ); */
                                                                  statuslist[
                                                                          index] =
                                                                      true;
                                                                  loadingCount =
                                                                      0;
                                                                  setState(
                                                                      () {});

                                                                  _loadprducts[
                                                                          index] =
                                                                      LoadTransferPrdModel(
                                                                          ldrId: details[index]
                                                                              .ldrId,
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
                                                        child: InkWell(
                                                          onTap: () {
                                                            setState(() {
                                                              statuslist[
                                                                      index] =
                                                                  false;

                                                              loadingCount = 0;
                                                              setState(() {});

                                                              _loadprducts[
                                                                      index] =
                                                                  LoadTransferPrdModel(
                                                                      ldrId: details[
                                                                              index]
                                                                          .ldrId,
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
                                                                      ? Colors
                                                                          .red
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
                                                                    : statuslist[index] ==
                                                                            true
                                                                        ? true
                                                                        : false,
                                                                groupValue:
                                                                    false,
                                                                onChanged:
                                                                    (value) {
                                                                  statuslist[
                                                                          index] =
                                                                      false;

                                                                  loadingCount =
                                                                      0;
                                                                  setState(
                                                                      () {});

                                                                  _loadprducts[
                                                                          index] =
                                                                      LoadTransferPrdModel(
                                                                          ldrId: details[index]
                                                                              .ldrId,
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
                          loadTransferDetailFailedState: () => Center(
                            child: Text(
                              AppLocalizations.of(context)!.noDataAvailable,
                              style: kfontstyle(),
                            ),
                          ),
                        );
                      },
                    ))
                  ],
                ),
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
                              visible:
                                  widget.header.ltrApprovalStatus == 'Pending'
                                      ? true
                                      : false,
                              child: MaterialButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                color:
                                    widget.header.ltrApprovalStatus == 'Pending'
                                        ? Colors.green.shade300
                                        : Colors.grey[300],
                                onPressed: () {
                                  if (widget.header.ltrApprovalStatus ==
                                      'Pending') {
                                    if (_loadprducts.contains(null)) {
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
                                                        LoadTransferApprovalBloc>()
                                                    .add(
                                                        const AddLoadTransferLoadingEvent());

                                                context
                                                    .read<
                                                        LoadTransferApprovalBloc>()
                                                    .add(
                                                      ApproveLoadtransferEvent(
                                                        approve:
                                                            LoadTransferApprovalInModel(
                                                          products:
                                                              _loadprducts,
                                                          reqId: widget
                                                              .header.ltrId,
                                                          userId: widget.header
                                                                  .userID ??
                                                              '',
                                                        ),
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
}
