import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approve_price_changein_model/approve_price_changein_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/price_change_header_model/price_change_header_model.dart';
import 'package:customer_connect/feature/data/models/price_change_prd_model/price_change_prd_model.dart';
import 'package:customer_connect/feature/data/models/price_change_reason_model/price_change_reason_model.dart';
import 'package:customer_connect/feature/state/bloc/approvepricechange/approve_price_change_bloc.dart';
import 'package:customer_connect/feature/state/bloc/pricechangedetails/price_change_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/pricechangeheader/price_change_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/pricechangereasons/price_change_reasons_bloc.dart';
import 'package:customer_connect/feature/state/cubit/approvalradio/aapproval_or_reject_radio_cubit.dart';
import 'package:customer_connect/feature/state/cubit/navigatetoback/navigateto_back_cubit.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PriceChangeDetail extends StatefulWidget {
  final PriceChangeHeaderModel priceChangeApprovel;
  final LoginUserModel user;
  final String currentMode;
  const PriceChangeDetail(
      {super.key,
      required this.priceChangeApprovel,
      required this.user,
      required this.currentMode});

  @override
  State<PriceChangeDetail> createState() => _PriceChangeDetailState();
}

List<String> selectedresons = [];
List<bool?> statuslist = [];
int loadingCount = 0;
bool isLoading = false;
int _approvedCount = 0;
List<PriceChangePrdModel?> _procechangeapproved = [];
int _totalcount = 0;
TextEditingController _searchctrls = TextEditingController();
Timer? debounce;

List<PriceChangeReasonModel> availableresons = [];

class _PriceChangeDetailState extends State<PriceChangeDetail> {
  @override
  void initState() {
    _searchctrls.clear();
    _procechangeapproved.clear();
    _approvedCount = 0;
    _totalcount = 0;
    loadingCount = 0;
    context.read<PriceChangeDetailsBloc>().add(const ClearPriceChangeDetails());
    context.read<PriceChangeDetailsBloc>().add(GetPriceChangeDetailsEvent(
        pchID: widget.priceChangeApprovel.pchId!, searchQuery: ''));

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
            // log(_approvedCount.toString());
            // if (_approvedCount != 0 && _approvedCount != _totalcount) {
            //   Future.delayed(const Duration(microseconds: 100), () {
            //     showPopAlert(context);
            //   });
            // } else {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          "${AppLocalizations.of(context)!.price_change} ${AppLocalizations.of(context)!.details}",
          style: appHeading(),
        ),
      ),
      body: BlocListener<NavigatetoBackCubit, NavigatetoBackState>(
        listener: (context, state) {
          state.when(
            navigateToBackScreen: (popfromscreen) {
              log(popfromscreen.toString());
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
            // if (_approvedCount != 0 && _approvedCount != _totalcount) {
            //   Future.delayed(const Duration(microseconds: 100), () {
            //     showPopAlert(context);
            //   });
            // } else {
            context.read<PriceChangeHeaderBloc>().add(GetPriceChangeHeaderEvent(
                rotID: widget.priceChangeApprovel.pchRotId!,
                mode: widget.currentMode,
                searchQuery: ''));
            // context.read<NavigatetoBackCubit>().popFromScreen(true);
            // }
          },
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('${widget.priceChangeApprovel.pchReqId}',
                              style: blueTextStyle()),
                          Row(
                            children: [
                              Text('${widget.priceChangeApprovel.cusCode} - ',
                                  style: blueTextStyle()),
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Text(
                                    overflow: TextOverflow.ellipsis,
                                    selectedLocale?.languageCode == 'en'
                                        ? "${widget.priceChangeApprovel.cusName}"
                                        : widget.priceChangeApprovel
                                                .arcusName ??
                                            '',
                                    style: subTitleTextStyle()),
                              ),
                            ],
                          ),
                          Text(
                            '${widget.priceChangeApprovel.createdDate} ',
                            style:
                                kfontstyle(fontSize: 10.sp, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey[200],
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
                      hintText: AppLocalizations.of(context)!.searchhere,
                      suffix: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: IconButton(
                                onPressed: () {
                                  if (_searchctrls.text.isNotEmpty) {
                                    _searchctrls.clear();

                                    context.read<PriceChangeDetailsBloc>().add(
                                        GetPriceChangeDetailsEvent(
                                            pchID: widget
                                                .priceChangeApprovel.pchId!,
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
                        context.read<PriceChangeDetailsBloc>().add(
                            GetPriceChangeDetailsEvent(
                                pchID: widget.priceChangeApprovel.pchId!,
                                searchQuery: value.trim()));
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              BlocListener<ApprovePriceChangeBloc, ApprovePriceChangeState>(
                listener: (context, state) {
                  state.when(
                    getPriceChangeApprovalState: (response) {
                      if (response != null) {
                        Navigator.pop(context);
                        isLoading = false;
                        if (response.mode == '1') {
                          showCupertinoDialog(
                            context: context,
                            builder: (context) => CupertinoAlertDialog(
                              title: Text(AppLocalizations.of(context)!.alert),
                              content: Text(
                                  "${AppLocalizations.of(context)!.productStatusUpdate} ${selectedLocale?.languageCode == 'en' ? response.status : response.arStatus} "),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    /* context.read<PriceChangeHeaderBloc>().add(
                                        GetPriceChangeHeaderEvent(
                                            rotID: widget.user.usrId!,
                                            mode: '',
                                            searchQuery: '')); */

                                    Navigator.pop(context);
                                    Navigator.pop(context);
                                  },
                                  child: Text(AppLocalizations.of(context)!.ok),
                                ),
                              ],
                            ),
                          );
                        } else {
                          statuslist =
                              List.generate(_totalcount, (index) => null);
                          setState(() {});
                          // Navigator.pop(context);
                          showCupertinoDialog(
                            context: context,
                            builder: (context) => CupertinoAlertDialog(
                              title: Text(AppLocalizations.of(context)!.alert),
                              content: Text(
                                  "${AppLocalizations.of(context)!.productStatusUpdate} ${selectedLocale?.languageCode == 'en' ? response.status : response.arStatus} ,${AppLocalizations.of(context)!.tryAgain}"),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(AppLocalizations.of(context)!.ok),
                                ),
                              ],
                            ),
                          );
                        }
                      }
                    },
                    approveLoadingState: () {
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
                    getPriceChangeApprovalFailed: () {
                      statuslist = List.generate(_totalcount, (index) => null);
                      setState(() {});
                      Navigator.pop(context);
                      showCupertinoDialog(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                          title: Text(AppLocalizations.of(context)!.alert),
                          content: Text(
                              AppLocalizations.of(context)!.somethingWentWrong),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(AppLocalizations.of(context)!.ok),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Expanded(
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
                                  flex: 3,
                                  fit: FlexFit.tight,
                                  child: Text(
                                      AppLocalizations.of(context)!.item,
                                      style: boxHeading())),
                              /* SizedBox(
                                width: 140.w,
                              ), */
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Text(AppLocalizations.of(context)!.uom,
                                    style: boxHeading()),
                              ),
                              /* SizedBox(
                                width: 18.w,
                              ), */
                              Flexible(
                                flex: 2,
                                fit: FlexFit.tight,
                                child: Text(
                                    AppLocalizations.of(context)!.reqPrice,
                                    style: boxHeading()),
                              ),
                              /* SizedBox(
                                width: 35.w,
                              ), */
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Text(
                                    AppLocalizations.of(context)!.apprPrice,
                                    style: boxHeading()),
                              )
                            ],
                          ),
                        ),
                      ),
                      BlocConsumer<PriceChangeDetailsBloc,
                          PriceChangeDetailsState>(
                        listener: (context, state) {
                          state.when(
                            getPRiceChangeDetails: (pdet) {
                              if (pdet != null) {
                                _procechangeapproved =
                                    List.generate(pdet.length, (index) => null);
                                _totalcount = pdet.length;
                                context.read<PriceChangeReasonsBloc>().add(
                                    const GetPRiceChangeReasonEvent(
                                        rsnType: ''));
                                statuslist.clear();

                                statuslist /* length = details.length; */
                                    =
                                    List.generate(pdet.length, (index) => null);

                                /* for (int i = 0; i < pdet.length; i++) {
                                  if (pdet[i].pcdApprovalStatus!.isNotEmpty) {
                                    if (pdet[i].pcdApprovalStatus == 'A') {
                                      statuslist[i] = true;
                                    } else {
                                      statuslist[i] = false;
                                    }
                                  }
                                } */
                              }
                            },
                            priceChangedetailsFailed: () {},
                          );
                        },
                        builder: (context, state) {
                          return state.when(
                            getPRiceChangeDetails: (pdet) => pdet == null
                                ? Expanded(
                                    child: Padding(
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
                                    ),
                                  )
                                : pdet.isEmpty
                                    ? Center(
                                        child: Text(
                                            AppLocalizations.of(context)!
                                                .noDataFound),
                                      )
                                    : ListView.separated(
                                        shrinkWrap: true,
                                        itemBuilder: (context, index) =>
                                            Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, right: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Row(
                                                children: [
                                                  Flexible(
                                                    flex: 3,
                                                    fit: FlexFit.tight,
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            pdet[index]
                                                                    .prdCode ??
                                                                '',
                                                            style:
                                                                loadTextStyle()),
                                                        Text(
                                                          selectedLocale
                                                                      ?.languageCode ==
                                                                  'en'
                                                              ? pdet[index]
                                                                      .prdName ??
                                                                  ''
                                                              : pdet[index]
                                                                      .arprdName ??
                                                                  '',
                                                          style:
                                                              subTitleTextStyle(),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  /*  SizedBox(
                                                width: 10.w,
                                              ), */
                                                  Flexible(
                                                    flex: 1,
                                                    fit: FlexFit.tight,
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          height: 5.w,
                                                        ),
                                                        Text(
                                                          pdet[index]
                                                                  .pcdHigherUom ??
                                                              '',
                                                          style:
                                                              subTitleTextStyle(),
                                                        ),
                                                        SizedBox(
                                                          height: 15.w,
                                                        ),
                                                        Text(
                                                          pdet[index]
                                                                  .pcdLowerUom ??
                                                              '',
                                                          style:
                                                              subTitleTextStyle(),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  /* SizedBox(
                                                width: 25.w,
                                              ), */
                                                  Flexible(
                                                    flex: 2,
                                                    fit: FlexFit.tight,
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          height: 5.w,
                                                        ),
                                                        Text(
                                                          pdet[index]
                                                                  .pcdStdHPrice ??
                                                              '',
                                                          style:
                                                              subTitleTextStyle(),
                                                        ),
                                                        SizedBox(
                                                          height: 15.w,
                                                        ),
                                                        Text(
                                                          pdet[index]
                                                                  .pcdStdLPrice ??
                                                              '',
                                                          style:
                                                              subTitleTextStyle(),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  /* SizedBox(
                                                width: 25.w,
                                              ), */
                                                  Column(
                                                    children: [
                                                      SizedBox(
                                                        height: 5.h,
                                                      ),
                                                      Flexible(
                                                        flex: 0,
                                                        fit: FlexFit.tight,
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 70.w,
                                                              height: 20.h,
                                                              decoration: BoxDecoration(
                                                                  color: Colors
                                                                      .grey
                                                                      .shade100,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5),
                                                                  border: Border.all(
                                                                      color: Colors
                                                                          .grey
                                                                          .shade400)),
                                                              child:
                                                                  TextFormField(
                                                                textAlign:
                                                                    TextAlign
                                                                        .right,
                                                                cursorHeight:
                                                                    12.h,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                style: kfontstyle(
                                                                    fontSize:
                                                                        10.sp),
                                                                decoration:
                                                                    InputDecoration(
                                                                  enabled: pdet[index]
                                                                              .pcdStdHPrice ==
                                                                          pdet[index]
                                                                              .pcdChangedHPrice
                                                                      ? false
                                                                      : true,
                                                                  isDense: true,
                                                                  filled: true,
                                                                  fillColor: Colors
                                                                      .grey
                                                                      .shade200,
                                                                  contentPadding:
                                                                      const EdgeInsets
                                                                          .only(
                                                                          top:
                                                                              8,
                                                                          left:
                                                                              5),
                                                                  border: /* InputBorder
                                                                                .none  */
                                                                      OutlineInputBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(5),
                                                                    borderSide:
                                                                        const BorderSide(
                                                                            color:
                                                                                Colors.transparent),
                                                                  ),
                                                                  enabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderRadius:
                                                                        BorderRadius
                                                                            .circular(5),
                                                                    borderSide:
                                                                        const BorderSide(
                                                                            color:
                                                                                Colors.transparent),
                                                                  ),
                                                                  disabledBorder:
                                                                      OutlineInputBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                    borderSide:
                                                                        const BorderSide(
                                                                            color:
                                                                                Colors.transparent),
                                                                  ),
                                                                  focusedBorder:
                                                                      OutlineInputBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                    borderSide:
                                                                        const BorderSide(
                                                                            color:
                                                                                Colors.transparent),
                                                                  ),
                                                                ),
                                                                controller:
                                                                    TextEditingController(
                                                                  text: pdet[
                                                                          index]
                                                                      .pcdChangedHPrice,
                                                                ),
                                                                onChanged:
                                                                    (value) {
                                                                  pdet[index]
                                                                          .pcdChangedHPrice =
                                                                      value;
                                                                  _procechangeapproved[index] = PriceChangePrdModel(
                                                                      aprvdHprice:
                                                                          pdet[index]
                                                                              .pcdChangedHPrice,
                                                                      aprvdLprice:
                                                                          pdet[index]
                                                                              .pcdChangedLprice,
                                                                      pcdId: pdet[
                                                                              index]
                                                                          .pcdId,
                                                                      reason: selectedresons[
                                                                          index],
                                                                      status:
                                                                          "A");
                                                                },
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 5.h,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Container(
                                                            width: 70.w,
                                                            height: 20.h,
                                                            decoration: BoxDecoration(
                                                                color: Colors
                                                                    .grey
                                                                    .shade100,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                                border: Border.all(
                                                                    color: Colors
                                                                        .grey
                                                                        .shade400)),
                                                            child:
                                                                TextFormField(
                                                              textAlign:
                                                                  TextAlign
                                                                      .right,
                                                              cursorHeight:
                                                                  12.h,
                                                              keyboardType:
                                                                  TextInputType
                                                                      .number,
                                                              style: kfontstyle(
                                                                  fontSize:
                                                                      10.sp),
                                                              decoration:
                                                                  InputDecoration(
                                                                enabled: pdet[index]
                                                                            .pcdStdLPrice ==
                                                                        pdet[index]
                                                                            .pcdChangedLprice
                                                                    ? false
                                                                    : true,
                                                                isDense: true,
                                                                filled: true,
                                                                fillColor: Colors
                                                                    .grey
                                                                    .shade200,
                                                                contentPadding:
                                                                    const EdgeInsets
                                                                        .only(
                                                                        top: 8,
                                                                        left:
                                                                            5),
                                                                border: /* InputBorder
                            .none  */
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5),
                                                                  borderSide:
                                                                      const BorderSide(
                                                                          color:
                                                                              Colors.transparent),
                                                                ),
                                                                disabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                  borderSide:
                                                                      const BorderSide(
                                                                          color:
                                                                              Colors.transparent),
                                                                ),
                                                                enabledBorder:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5),
                                                                  borderSide:
                                                                      const BorderSide(
                                                                          color:
                                                                              Colors.transparent),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                  borderSide:
                                                                      const BorderSide(
                                                                          color:
                                                                              Colors.transparent),
                                                                ),
                                                              ),
                                                              controller:
                                                                  TextEditingController(
                                                                text: pdet[
                                                                        index]
                                                                    .pcdChangedLprice,
                                                              ),
                                                              onChanged:
                                                                  (value) {
                                                                pdet[index]
                                                                        .pcdChangedLprice =
                                                                    value;
                                                                _procechangeapproved[index] = PriceChangePrdModel(
                                                                    aprvdHprice:
                                                                        pdet[index]
                                                                            .pcdChangedHPrice,
                                                                    aprvdLprice:
                                                                        pdet[index]
                                                                            .pcdChangedLprice,
                                                                    pcdId: pdet[
                                                                            index]
                                                                        .pcdId,
                                                                    reason:
                                                                        selectedresons[
                                                                            index],
                                                                    status:
                                                                        'A');
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 8.h,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Text(
                                                      '${AppLocalizations.of(context)!.ordQty} : ${pdet[index].pcdHigherUom} - ${pdet[index].pcdHigherQty} | ${pdet[index].pcdLowerUom} - ${pdet[index].pcdLowerQty}',
                                                      style:
                                                          subTitleTextStyle(),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      '${AppLocalizations.of(context)!.stdPrice} : ${pdet[index].pcdHigherUom} - ${pdet[index].pcdStdHPrice} | ${pdet[index].pcdLowerUom} - ${pdet[index].pcdStdLPrice}',
                                                      style:
                                                          subTitleTextStyle(),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5.h,
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
                                                          PriceChangeReasonsBloc,
                                                          PriceChangeReasonsState>(
                                                        listener:
                                                            (context, state) {
                                                          state.when(
                                                            getPriceChangeReasons:
                                                                (resons) {
                                                              if (resons !=
                                                                  null) {
                                                                selectedresons
                                                                    .clear();

                                                                availableresons
                                                                    .clear();
                                                                availableresons =
                                                                    [
                                                                  PriceChangeReasonModel(
                                                                      rsnId:
                                                                          '-1',
                                                                      rsnName: selectedLocale?.languageCode ==
                                                                              'en'
                                                                          ? 'Select reason'
                                                                          : AppLocalizations.of(context)!
                                                                              .selectReason,
                                                                      rsnArName:
                                                                          AppLocalizations.of(context)!
                                                                              .selectReason,
                                                                      rsnType:
                                                                          'null')
                                                                ];

                                                                selectedresons =
                                                                    List.generate(
                                                                        pdet
                                                                            .length,
                                                                        (index) =>
                                                                            '-1');
                                                                availableresons
                                                                    .addAll(
                                                                        resons);
                                                              }
                                                            },
                                                            priceChangeReasonFailed:
                                                                () {},
                                                          );
                                                        },
                                                        builder:
                                                            (context, state) {
                                                          return state.when(
                                                            getPriceChangeReasons:
                                                                (resons) => resons ==
                                                                            null ||
                                                                        availableresons
                                                                            .isEmpty
                                                                    ? const ShimmerContainers(
                                                                        height:
                                                                            30,
                                                                        width:
                                                                            80,
                                                                      )
                                                                    : Transform
                                                                        .scale(
                                                                        scale:
                                                                            0.8,
                                                                        child:
                                                                            Container(
                                                                          height:
                                                                              30.h,
                                                                          // width: MediaQuery.of(context)
                                                                          //         .size
                                                                          //         .width /
                                                                          //     3,

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
                                                                          child:
                                                                              DropdownButtonFormField(
                                                                            elevation:
                                                                                0,
                                                                            dropdownColor:
                                                                                Colors.white,
                                                                            value:
                                                                                availableresons[0].rsnId ?? '',
                                                                            style:
                                                                                kfontstyle(color: Colors.black),
                                                                            isExpanded:
                                                                                true,
                                                                            decoration:
                                                                                InputDecoration(
                                                                              filled: true,
                                                                              fillColor: Colors.white,
                                                                              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                                                                              border: OutlineInputBorder(
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
                                                                            items:
                                                                                availableresons.map((PriceChangeReasonModel item) {
                                                                              return DropdownMenuItem(
                                                                                value: item.rsnId,
                                                                                child: Text(
                                                                                  overflow: TextOverflow.ellipsis,
                                                                                  selectedLocale?.languageCode == 'en' ? item.rsnName ?? '' : item.rsnArName ?? '',
                                                                                  style: kfontstyle(fontSize: 10.sp),
                                                                                ),
                                                                              );
                                                                            }).toList(),
                                                                            onChanged:
                                                                                (value) {
                                                                              selectedresons[index] = value ?? '';
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ),
                                                            priceChangeReasonFailed:
                                                                () =>
                                                                    const SizedBox(),
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                    BlocBuilder<
                                                        AapprovalOrRejectRadioCubit,
                                                        AapprovalOrRejectRadioState>(
                                                      builder:
                                                          (context, state) {
                                                        return Row(
                                                          children: [
                                                            Transform.scale(
                                                              scale: 0.8,
                                                              origin:
                                                                  const Offset(
                                                                      -120, 0),
                                                              child: Row(
                                                                children: [
                                                                  Radio(
                                                                    fillColor: MaterialStateProperty.resolveWith<
                                                                        Color>((Set<
                                                                            MaterialState>
                                                                        states) {
                                                                      return (statuslist[index] ==
                                                                              true)
                                                                          ? Colors
                                                                              .green
                                                                              .shade300
                                                                          : Colors
                                                                              .grey;
                                                                    }),
                                                                    /* activeColor: isselected == true
                                                                                                             : Colors.grey, */
                                                                    value: statuslist[index] ==
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
                                                                      statuslist[
                                                                              index] =
                                                                          true;
                                                                      loadingCount =
                                                                          0;
                                                                      setState(
                                                                          () {});

                                                                      _procechangeapproved[index] = PriceChangePrdModel(
                                                                          aprvdHprice: pdet[index]
                                                                              .pcdChangedHPrice,
                                                                          aprvdLprice: pdet[index]
                                                                              .pcdChangedLprice,
                                                                          pcdId: pdet[index]
                                                                              .pcdId,
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
                                                            Transform.scale(
                                                              scale: 0.8,
                                                              origin:
                                                                  const Offset(
                                                                      -120, 0),
                                                              child: Row(
                                                                children: [
                                                                  Radio(
                                                                    fillColor: MaterialStateProperty.resolveWith<
                                                                        Color>((Set<
                                                                            MaterialState>
                                                                        states) {
                                                                      return (statuslist[index] != null &&
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
                                                                    value: statuslist[index] ==
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

                                                                      _procechangeapproved[index] = PriceChangePrdModel(
                                                                          aprvdHprice: pdet[index]
                                                                              .pcdChangedHPrice,
                                                                          aprvdLprice: pdet[index]
                                                                              .pcdChangedLprice,
                                                                          pcdId: pdet[index]
                                                                              .pcdId,
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
                                        separatorBuilder: (context, index) =>
                                            Divider(
                                          color: Colors.grey[300],
                                        ),
                                        itemCount: pdet.length,
                                      ),
                            priceChangedetailsFailed: () => Center(
                              child: Text(
                                AppLocalizations.of(context)!.noDataAvailable,
                                style: kfontstyle(),
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  ),
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
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: widget.priceChangeApprovel
                                          .pchApprovalStatus ==
                                      'Pending'
                                  ? Colors.green.shade300
                                  : Colors.grey[300],
                              onPressed: () {
                                if (widget.priceChangeApprovel
                                        .pchApprovalStatus ==
                                    'Pending') {
                                  if (_procechangeapproved.contains(null)) {
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
                                                      ApprovePriceChangeBloc>()
                                                  .add(
                                                      const AddApprovalLoadinEvent());

                                              context
                                                  .read<
                                                      ApprovePriceChangeBloc>()
                                                  .add(
                                                    GetPricChangeApprovalEvent(
                                                      approval: ApprovePriceChangeinModel(
                                                          priceId: widget
                                                              .priceChangeApprovel
                                                              .pchId,
                                                          userId: widget
                                                              .priceChangeApprovel
                                                              .userID,
                                                          products:
                                                              _procechangeapproved),
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
    log(jsonEncode(_procechangeapproved));
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
