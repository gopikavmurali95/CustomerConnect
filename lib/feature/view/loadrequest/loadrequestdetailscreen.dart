import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approval_reson_model/approval_reson_model.dart';
import 'package:customer_connect/feature/data/models/load_req_header_model/LoadReqHeaderModel.dart';
import 'package:customer_connect/feature/data/models/load_req_prd_model/load_req_prd_model.dart';
import 'package:customer_connect/feature/data/models/load_request_approval/LoadReqInApprovalModel.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/state/bloc/approvereturnprod/approve_return_product_bloc.dart';
import 'package:customer_connect/feature/state/bloc/loadreqapproval/load_req_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/loadreqdetail/load_req_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/loadreqheader/load_req_header_bloc.dart';

import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../LoadInDetail/load_detail_completed.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// import '../../data/models/material_req_header_model/MaterialReqHeaderModel.dart';

class LoadReqDetailscreen extends StatefulWidget {
  //final ReturnApprovalHeaderModel returnApprovel;

  final LoadReqHeaderModel loadrequest;
  final LoginUserModel user;
  final String currentMode;
  const LoadReqDetailscreen(
      {super.key,
      required this.user,
      required this.loadrequest,
      required this.currentMode});

  @override
  State<LoadReqDetailscreen> createState() => _LoadReqDetailscreenState();
}

List<String> selectedresons = [];
List<bool?> statuslist = [];
bool isLoading = false;

int loadingCount = 0;
List<ApprovalResonModel> availableresons = [];
int approvedCount = 0;

List<LoadReqPrdModel?> _loadproducts = [];
//String _selectedloadrequestdetail = 'P';
//TextEditingController _apprvHQtyController = TextEditingController();
//TextEditingController _apprvLQtyController = TextEditingController();
TextEditingController _loadreqdetailSearchController = TextEditingController();

class _LoadReqDetailscreenState extends State<LoadReqDetailscreen> {
  @override
  void initState() {
    approvedCount = 0;
    loadingCount = 0;
    context.read<LoadReqDetailBloc>().add(const ClearLodReqDetailEvent());
    context.read<LoadReqDetailBloc>().add(GetloadreqdetailEvent(
            reqId: widget.loadrequest.lrhID ?? '',
            searchQuery: '') //widget.user.usrId??''
        );
    _loadreqdetailSearchController.clear();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log(widget.loadrequest.rotID ?? '');
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
          AppLocalizations.of(context)!.loadRequestDetails,
          style: appHeading(),
        ),
      ),
      body: PopScope(
        onPopInvoked: (didPop) {
          context.read<LoadReqHeaderBloc>().add(LoadreqSuccessEvent(
              userId: widget.loadrequest.userID ?? '',
              mode: widget.currentMode,
              searchQuery: ''));

          // context.read<LoadReqDetailBloc>().add(GetloadreqdetailEvent(
          //     reqId: widget.loadrequest.rotID??'',
          //     mode: widget.currentMode,
          //     searchQuery: '',
          // ));
        },
        child: Column(
          children: [
            Expanded(
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
                          height: 60,
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
                              Text(
                                '${widget.loadrequest.lrhNumber}',
                                style: kfontstyle(
                                  fontSize: 12.sp,
                                  color: const Color(0xff2C6B9E),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '${widget.loadrequest.rotCode}- ',
                                    style: kfontstyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xff2C6B9E),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    fit: FlexFit.tight,
                                    child: Text(
                                      overflow: TextOverflow.ellipsis,
                                      "${widget.loadrequest.usrName}",
                                      style: kfontstyle(
                                          fontSize: 12.sp,
                                          color: const Color(0xff413434)),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '${AppLocalizations.of(context)!.expDate} : ',
                                    style: kfontstyle(
                                      fontSize: 10.sp,
                                      color: const Color(0xff2C6B9E),
                                    ),
                                  ),
                                  Flexible(
                                    flex: 1,
                                    fit: FlexFit.tight,
                                    child: Text(
                                      overflow: TextOverflow.ellipsis,
                                      "${widget.loadrequest.lrhLoadReqDate}",
                                      style: kfontstyle(
                                          fontSize: 10.sp,
                                          color: const Color(0xff413434)),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '${widget.loadrequest.createdDate}',
                                style: kfontstyle(
                                    fontSize: 10.sp, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // height: 10.h,
                          // width: 10.h,
                          decoration: BoxDecoration(
                            color: widget.loadrequest.status! == "Pending"
                                ? const Color(0xfff7f4e2)
                                : widget.loadrequest.status == "Action Taken"
                                    ? const Color(0xffe3f7e2)
                                    : Colors.red[300],
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 3),
                            child: Text(
                              widget.loadrequest.status ?? '',
                              style: kfontstyle(fontSize: 8.sp),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10.0, right: 10, bottom: 10),
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
                          controller: _loadreqdetailSearchController,
                          onChanged: (value) {
                            debounce = Timer(
                                const Duration(
                                  milliseconds: 500,
                                ), () async {
                              context
                                  .read<LoadReqDetailBloc>()
                                  .add(GetloadreqdetailEvent(
                                    searchQuery:
                                        _loadreqdetailSearchController.text,
                                    reqId: '',
                                  ));
                            });
                            // if (debounce?.isActive ?? false) debounce!.cancel();
                            // debounce = Timer(
                            //   const Duration(
                            //     milliseconds: 200,
                            //   ),
                            //       () async {
                            //     context
                            //         .read<LoadingDetailBloc>()
                            //         .add(const ClearLoadingDetailEvent());
                            //     context.read<LoadingDetailBloc>().add(
                            //         GetloadingDetailEvent(
                            //             iD: widget.loadingheader.id ?? '',
                            //             searchQuery: value));
                            //   },
                            // );
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
                                        if (_loadreqdetailSearchController
                                            .text.isNotEmpty) {
                                          _loadreqdetailSearchController
                                              .clear();

                                          context
                                              .read<LoadReqDetailBloc>()
                                              .add(const GetloadreqdetailEvent(
                                                  // mode: _selectedloadrequestdetail,
                                                  searchQuery: "",
                                                  reqId: ''));
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
                                        size: 15.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              hintText:
                                  AppLocalizations.of(context)!.searchItems,
                              hintStyle: const TextStyle(
                                  fontSize: 12,
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
                          maxLength: 10,
                          // controller: _locationNameTextController,
                        )),
                  ),
                  SizedBox(
                    height: 5.h,
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
                          Text(
                            AppLocalizations.of(context)!.item,
                            style: boxHeading(),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Row(
                            children: [
                              Text(AppLocalizations.of(context)!.uom,
                                  style: boxHeading()),
                              SizedBox(
                                width: selectedLocale?.languageCode == "en"
                                    ? 30.w
                                    : 10.w,
                              ),
                              Text(AppLocalizations.of(context)!.reqQty,
                                  style: boxHeading()),
                              SizedBox(
                                width: selectedLocale?.languageCode == "en"
                                    ? 30.w
                                    : 10.w,
                              ),
                              Text(AppLocalizations.of(context)!.apprQty,
                                  style: boxHeading()),
                              SizedBox(
                                width: 10.w,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  BlocListener<LoadReqDetailBloc, LoadReqDetailState>(
                    listener: (context, state) {
                      state.when(
                        loadreqDetailSuccessState: (details) {
                          if (details != null) {
                            _loadproducts =
                                List.generate(details.length, (index) => null);
                            statuslist.clear();

                            for (int index = 0;
                                index < details.length;
                                index++) {
                              _loadproducts[index] = LoadReqPrdModel(
                                lrdHQty: details[index].lrdHQty,
                                lrdHuom: details[index].lrdHUOM,
                                lrdId: details[index].lrdID,
                                lrdLQty: details[index].lrdLQty,
                                lrdLuom: details[index].lrdLUOM,
                                lrdPrdId: details[index].lrdPrdID,
                                lrdTotalQty: details[index].lrdTotalQty,
                                txtApvHQty: details[index].lrdApvHQty,
                                txtApvLQty: details[index].lrdApvLQty,
                              );
                            }
                          }
                        },
                        loadreqDetailFailedState: () {},
                      );
                    },
                    child: BlocBuilder<LoadReqDetailBloc, LoadReqDetailState>(
                      builder: (context, state) {
                        return state.when(
                          loadreqDetailSuccessState: (details) =>
                              details == null
                                  ? Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 0),
                                        child: ListView.separated(
                                            // physics:
                                            //     const NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemBuilder: (context, index) =>
                                                ShimmerContainers(
                                                    height: 60.h,
                                                    width: double.infinity),
                                            separatorBuilder:
                                                (context, index) => Divider(
                                                      color: Colors.grey[300],
                                                    ),
                                            itemCount: 10),
                                      ),
                                    )
                                  : details.isEmpty
                                      ? Center(
                                          child: Text(
                                            AppLocalizations.of(context)!
                                                .noDataAvailable,
                                            style: kfontstyle(),
                                          ),
                                        )
                                      : Expanded(
                                          child: ListView.separated(
                                            shrinkWrap: true,
                                            itemBuilder: (context, index) =>
                                                BlocListener<
                                                    ApproveReturnProductBloc,
                                                    ApproveReturnProductState>(
                                              listener: (context, state) {
                                                state.when(
                                                  approveReturnProductdSTatusState:
                                                      (response) {
                                                    if (response != null) {
                                                      Navigator.pop(context);
                                                      isLoading = false;
                                                      if (response.mode ==
                                                          '1') {
                                                        showCupertinoDialog(
                                                          context: context,
                                                          builder: (context) =>
                                                              CupertinoAlertDialog(
                                                            title: Text(
                                                                AppLocalizations.of(
                                                                        context)!
                                                                    .alert),
                                                            content: Text(
                                                                "${AppLocalizations.of(context)!.productStatusUpdate} ${response.status} "),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
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
                                                        statuslist[index] =
                                                            null;
                                                        setState(() {});
                                                        Navigator.pop(context);
                                                        showCupertinoDialog(
                                                          context: context,
                                                          builder: (context) =>
                                                              CupertinoAlertDialog(
                                                            title: Text(
                                                                AppLocalizations.of(
                                                                        context)!
                                                                    .alert),
                                                            content: Text(
                                                                "${AppLocalizations.of(context)!.productStatusUpdate} ${response.status} ,${AppLocalizations.of(context)!.trAgain}"),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () {
                                                                  Navigator.pop(
                                                                      context);
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
                                                  approveReturnLoadingState:
                                                      () {
                                                    if (loadingCount == 0) {
                                                      loadingCount = 1;
                                                      approvedCount += 1;
                                                      showCupertinoModalPopup(
                                                          context: context,
                                                          barrierDismissible:
                                                              false,
                                                          builder: (context) =>
                                                              SizedBox(
                                                                height: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height,
                                                                width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                                child:
                                                                    const PopScope(
                                                                  canPop: true,
                                                                  child:
                                                                      CupertinoActivityIndicator(
                                                                    animating:
                                                                        true,
                                                                    color: Colors
                                                                        .red,
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
                                                            AppLocalizations.of(
                                                                    context)!
                                                                .alert),
                                                        content: Text(
                                                            AppLocalizations.of(
                                                                    context)!
                                                                .somethingWentWrong),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
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
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10),
                                                child: Column(
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Expanded(
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                details[index]
                                                                        .prdCode ??
                                                                    '',
                                                                style:
                                                                    kfontstyle(
                                                                  fontSize:
                                                                      12.sp,
                                                                  color: const Color(
                                                                      0xff7b70ac),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 50,
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width /
                                                                    3,
                                                                child: Text(
                                                                  selectedLocale
                                                                              ?.languageCode ==
                                                                          "en"
                                                                      ? details[index]
                                                                              .prdName ??
                                                                          ''
                                                                      : details[index]
                                                                              .arprdName ??
                                                                          '',
                                                                  style: kfontstyle(
                                                                      fontSize:
                                                                          10.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      color: Colors
                                                                          .black54),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              2.w,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Column(
                                                                children: [
                                                                  Text(
                                                                    details[index]
                                                                            .lrdHUOM ??
                                                                        '',
                                                                    style: kfontstyle(
                                                                        fontSize: 12
                                                                            .sp,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black54),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5.h,
                                                                  ),
                                                                  Text(
                                                                    details[index]
                                                                            .lrdLUOM ??
                                                                        '',
                                                                    style: kfontstyle(
                                                                        fontSize: 12
                                                                            .sp,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black54),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20.h,
                                                              ),
                                                              Column(
                                                                children: [
                                                                  Text(
                                                                    details[index]
                                                                            .lrdHQty ??
                                                                        '',
                                                                    style: kfontstyle(
                                                                        fontSize: 12
                                                                            .sp,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black54),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5.h,
                                                                  ),
                                                                  Text(
                                                                    details[index]
                                                                            .lrdLQty ??
                                                                        '',
                                                                    style: kfontstyle(
                                                                        fontSize: 12
                                                                            .sp,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        color: Colors
                                                                            .black54),
                                                                  ),
                                                                ],
                                                              ),
                                                              Column(
                                                                children: [
                                                                  SizedBox(
                                                                    height: 25,
                                                                    width: 80,
                                                                    child:
                                                                        TextFormField(
                                                                      keyboardType:
                                                                          TextInputType
                                                                              .number,
                                                                      controller:
                                                                          TextEditingController(
                                                                              text: details[index].lrdHQty),
                                                                      onChanged:
                                                                          (value) {
                                                                        details[index].lrdLQty =
                                                                            value;
                                                                        _loadproducts[index] =
                                                                            LoadReqPrdModel(
                                                                          lrdLQty:
                                                                              details[index].lrdLQty,
                                                                          lrdHQty:
                                                                              details[index].lrdHQty,
                                                                          lrdId:
                                                                              details[index].lrdID,
                                                                        );
                                                                      },
                                                                      //controller: _apprvHQtyController,
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              9),
                                                                      decoration: InputDecoration(
                                                                          enabledBorder: const OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(color: Colors.black12, width: 1),
                                                                          ),
                                                                          focusedBorder: const OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(color: Colors.grey, width: 1.0),
                                                                          ),
                                                                          fillColor: const Color(0xfff5f5f5),
                                                                          filled: true,
                                                                          border: OutlineInputBorder(
                                                                            borderSide:
                                                                                const BorderSide(color: Colors.red, width: 4),
                                                                            borderRadius:
                                                                                BorderRadius.circular(5),
                                                                          )),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 5.h,
                                                                  ),
                                                                  SizedBox(
                                                                    height: 25,
                                                                    width: 80,
                                                                    child:
                                                                        TextFormField(
                                                                      keyboardType:
                                                                          TextInputType
                                                                              .number,
                                                                      controller:
                                                                          TextEditingController(
                                                                              text: details[index].lrdLQty),
                                                                      onChanged:
                                                                          (value) {
                                                                        details[index].lrdLQty =
                                                                            value;
                                                                        _loadproducts[index] =
                                                                            LoadReqPrdModel(
                                                                          lrdLQty:
                                                                              details[index].lrdLQty,
                                                                          lrdHQty:
                                                                              details[index].lrdHQty,
                                                                          lrdId:
                                                                              details[index].lrdID,
                                                                        );
                                                                      },
                                                                      style: const TextStyle(
                                                                          fontSize:
                                                                              9),
                                                                      decoration: InputDecoration(
                                                                          enabledBorder: const OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(color: Colors.black12, width: 1),
                                                                          ),
                                                                          focusedBorder: const OutlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(color: Colors.grey, width: 1.0),
                                                                          ),
                                                                          fillColor: const Color(0xfff5f5f5),
                                                                          filled: true,
                                                                          border: OutlineInputBorder(
                                                                            borderSide:
                                                                                const BorderSide(color: Colors.red, width: 4),
                                                                            borderRadius:
                                                                                BorderRadius.circular(5),
                                                                          )),
                                                                    ),
                                                                  ),
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    /* Row(
                                                  children: [
                                                    BlocConsumer<
                                                        LoadReqApprovalBloc,
                                                        LoadReqApprovalState>(
                                                      listener:
                                                          (context, state) {
                                                        state.when(
                                                          loadReqApprovalSuccessState:
                                                              (LoadRequestApprovalOutModel?
                                                                  response) {
                                                            if (response !=
                                                                null) {
                                                              Navigator.pop(
                                                                  context);
                                                              // if (isApproval) {
                                                              showCupertinoDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) =>
                                                                        CupertinoAlertDialog(
                                                                  title: const Text(
                                                                      'Alert'),
                                                                  content: Text(
                                                                      response.status ??
                                                                          ''),
                                                                  actions: [
                                                                    TextButton(
                                                                      onPressed:
                                                                          () {
                                                                        context
                                                                            .read<LoadReqDetailBloc>()
                                                                            .add(const GetloadreqdetailEvent(reqId: ''));
                                                                        Navigator.pop(
                                                                            context);
                                                                      },
                                                                      child: const Text(
                                                                          'Proceed'),
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                              // }
                                                            }
                                                          },
                                                          loadReqApprovalFailedState:
                                                              () {
                                                            Navigator.pop(
                                                                context);
                                                            showCupertinoDialog(
                                                              context: context,
                                                              builder: (context) =>
                                                                  CupertinoAlertDialog(
                                                                title:
                                                                    const Text(
                                                                        'Alert'),
                                                                content: const Text(
                                                                    "something went wrong, please try again later"),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed:
                                                                        () {
                                                                      context
                                                                          .read<
                                                                              LoadReqDetailBloc>()
                                                                          .add(const GetloadreqdetailEvent(
                                                                              reqId: ''));
                                                                      Navigator.pop(
                                                                          context);
                                                                    },
                                                                    child:
                                                                        const Text(
                                                                            'Ok'),
                                                                  ),
                                                                ],
                                                              ),
                                                            );
                                                          },
                                                          loadReqApprovalLoadingState:
                                                              () {
                                                            if (loadingCount ==
                                                                0) {
                                                              loadingCount = 1;
                                                              showCupertinoModalPopup(
                                                                  context:
                                                                      context,
                                                                  barrierDismissible:
                                                                      false,
                                                                  builder:
                                                                      (context) =>
                                                                          SizedBox(
                                                                            height:
                                                                                MediaQuery.of(context).size.height,
                                                                            width:
                                                                                MediaQuery.of(context).size.width,
                                                                            child:
                                                                                const PopScope(
                                                                              canPop: true,
                                                                              child: CupertinoActivityIndicator(
                                                                                animating: true,
                                                                                color: Colors.red,
                                                                                radius: 30,
                                                                              ),
                                                                            ),
                                                                          ));
                                                            }
                                                          },
                                                        );
                                                      },
                                                      builder:
                                                          (context, state) {
                                                        return Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Expanded(
                                                                // width: MediaQuery.of(
                                                                //         context)
                                                                //     .size
                                                                //     .width,
                                                                child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Flexible(
                                                                    flex: 2,
                                                                    fit: FlexFit
                                                                        .tight,
                                                                    child:
                                                                        TextFormField(
                                                                      keyboardType:
                                                                          TextInputType
                                                                              .number,
                                                                      controller:
                                                                          TextEditingController(
                                                                        text: details[index]
                                                                            .lrdApvHQty,
                                                                      ),
                                                                      style: kfontstyle(
                                                                          fontSize:
                                                                              13.sp),
                                                                      onChanged:
                                                                          (value) {
                                                                        details[index].lrdApvHQty =
                                                                            value;
                                                                        _loadproducts[index] =
                                                                            LoadReqPrdModel(
                                                                          lrdHQty:
                                                                              details[index].lrdHQty,
                                                                          lrdHuom:
                                                                              details[index].lrdHUOM,
                                                                          lrdId:
                                                                              details[index].lrdID,
                                                                          lrdLQty:
                                                                              details[index].lrdLQty,
                                                                          lrdLuom:
                                                                              details[index].lrdLUOM,
                                                                          lrdPrdId:
                                                                              details[index].lrdPrdID,
                                                                          lrdTotalQty:
                                                                              details[index].lrdTotalQty,
                                                                          txtApvHQty:
                                                                              details[index].lrdApvHQty,
                                                                          txtApvLQty:
                                                                              details[index].lrdApvLQty,
                                                                        );
                                                                      },
                                                                    )),
                                                                Flexible(
                                                                  flex: 2,
                                                                  fit: FlexFit
                                                                      .tight,
                                                                  child:
                                                                      SizedBox(
                                                                    width: 20.w,
                                                                  ),
                                                                ),
                                                                Flexible(
                                                                    flex: 2,
                                                                    fit: FlexFit
                                                                        .tight,
                                                                    child:
                                                                        TextFormField(
                                                                      keyboardType:
                                                                          TextInputType
                                                                              .number,
                                                                      controller:
                                                                          TextEditingController(
                                                                        text: details[index]
                                                                            .lrdApvLQty,
                                                                      ),
                                                                      onChanged:
                                                                          (value) {
                                                                        details[index].lrdApvLQty =
                                                                            value;

                                                                        _loadproducts[index] =
                                                                            LoadReqPrdModel(
                                                                          lrdHQty:
                                                                              details[index].lrdHQty,
                                                                          lrdHuom:
                                                                              details[index].lrdHUOM,
                                                                          lrdId:
                                                                              details[index].lrdID,
                                                                          lrdLQty:
                                                                              details[index].lrdLQty,
                                                                          lrdLuom:
                                                                              details[index].lrdLUOM,
                                                                          lrdPrdId:
                                                                              details[index].lrdPrdID,
                                                                          lrdTotalQty:
                                                                              details[index].lrdTotalQty,
                                                                          txtApvHQty:
                                                                              details[index].lrdApvHQty,
                                                                          txtApvLQty:
                                                                              details[index].lrdApvLQty,
                                                                        );
                                                                      },
                                                                    )),
                                                              ],
                                                            )),
                                                          ],
                                                        );
                                                      },
                                                    ), */
                                                    /*  ],
                                                ) */

                                                    // Row(
                                                    //   children: [
                                                    //     Expanded(
                                                    //       // width: MediaQuery.of(
                                                    //       //         context)
                                                    //       //     .size
                                                    //       //     .width,
                                                    //       child: Row(
                                                    //         mainAxisAlignment:
                                                    //             MainAxisAlignment.end,
                                                    //         children: [
                                                    //           Text(
                                                    //             details[index]
                                                    //                     .lrdHUOM ??
                                                    //                 '',
                                                    //             style: kfontstyle(
                                                    //                 fontSize: 12.sp,
                                                    //                 fontWeight:
                                                    //                     FontWeight.w400,
                                                    //                 color:
                                                    //                     Colors.black54),
                                                    //           ),
                                                    //           SizedBox(
                                                    //             width: 10.w,
                                                    //           ),
                                                    //           Flexible(
                                                    //               flex: 2,
                                                    //               fit: FlexFit.tight,
                                                    //               child: TextFormField(
                                                    //                 keyboardType:
                                                    //                     TextInputType
                                                    //                         .number,
                                                    //                 controller:
                                                    //                     TextEditingController(
                                                    //                   text: details[
                                                    //                           index]
                                                    //                       .lrdApvHQty,
                                                    //                 ),
                                                    //                 style: kfontstyle(
                                                    //                     fontSize:
                                                    //                         13.sp),
                                                    //                 onChanged: (value) {
                                                    //                   details[index]
                                                    //                           .lrdApvLQty =
                                                    //                       value;
                                                    //                   _loadproducts[
                                                    //                           index] =
                                                    //                       LoadReqPrdModel(
                                                    //                     lrdHQty: details[
                                                    //                             index]
                                                    //                         .lrdLQty,
                                                    //                     lrdHuom: details[
                                                    //                             index]
                                                    //                         .lrdHUOM,
                                                    //                     lrdId: details[
                                                    //                             index]
                                                    //                         .lrdID,
                                                    //                     lrdLQty: details[
                                                    //                             index]
                                                    //                         .lrdLQty,
                                                    //                     lrdLuom: details[
                                                    //                             index]
                                                    //                         .lrdLUOM,
                                                    //                     lrdPrdId: details[
                                                    //                             index]
                                                    //                         .lrdPrdID,
                                                    //                     lrdTotalQty: details[
                                                    //                             index]
                                                    //                         .lrdTotalQty,
                                                    //                     txtApvHQty: details[
                                                    //                             index]
                                                    //                         .lrdApvHQty,
                                                    //                     txtApvLQty: details[
                                                    //                             index]
                                                    //                         .lrdApvLQty,
                                                    //                   );
                                                    //                 },
                                                    //               )),
                                                    //           const Spacer(),
                                                    //           Text(
                                                    //             details[index]
                                                    //                     .lrdLUOM ??
                                                    //                 '',
                                                    //             style: kfontstyle(
                                                    //                 fontSize: 12.sp,
                                                    //                 fontWeight:
                                                    //                     FontWeight.w400,
                                                    //                 color:
                                                    //                     Colors.black54),
                                                    //           ),
                                                    //           SizedBox(
                                                    //             width: 10.w,
                                                    //           ),
                                                    //           Flexible(
                                                    //             flex: 2,
                                                    //             fit: FlexFit.tight,
                                                    //             child: TextFormField(
                                                    //               keyboardType:
                                                    //                   TextInputType
                                                    //                       .number,
                                                    //               controller:
                                                    //                   TextEditingController(
                                                    //                 text: details[index]
                                                    //                     .lrdApvLQty,
                                                    //               ),
                                                    //               onChanged: (value) {
                                                    //                 details[index]
                                                    //                         .lrdApvLQty =
                                                    //                     value;
                                                    //                 _loadproducts[
                                                    //                         index] =
                                                    //                     LoadReqPrdModel(
                                                    //                   lrdHQty:
                                                    //                       details[index]
                                                    //                           .lrdLQty,
                                                    //                   lrdHuom:
                                                    //                       details[index]
                                                    //                           .lrdHUOM,
                                                    //                   lrdId:
                                                    //                       details[index]
                                                    //                           .lrdID,
                                                    //                   lrdLQty:
                                                    //                       details[index]
                                                    //                           .lrdLQty,
                                                    //                   lrdLuom:
                                                    //                       details[index]
                                                    //                           .lrdLUOM,
                                                    //                   lrdPrdId:
                                                    //                       details[index]
                                                    //                           .lrdPrdID,
                                                    //                   lrdTotalQty:
                                                    //                       details[index]
                                                    //                           .lrdTotalQty,
                                                    //                   txtApvHQty:
                                                    //                       details[index]
                                                    //                           .lrdApvHQty,
                                                    //                   txtApvLQty:
                                                    //                       details[index]
                                                    //                           .lrdApvLQty,
                                                    //                 );
                                                    //               },
                                                    //             ),
                                                    //           ),
                                                    //         ],
                                                    //       ),
                                                    //     ),
                                                    //   ],
                                                    // )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            separatorBuilder:
                                                (context, index) => Divider(
                                              color: Colors.grey[300],
                                            ),
                                            itemCount: details.length,
                                          ),
                                        ),
                          loadreqDetailFailedState: () => SizedBox(
                            height: MediaQuery.of(context).size.height / 1.5,
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
            BlocListener<LoadReqApprovalBloc, LoadReqApprovalState>(
              listener: (context, state) {
                state.when(
                  loadReqApprovalSuccessState: (response) {
                    if (response != null) {
                      Navigator.pop(context);
                      // if (isApproval) {
                      showCupertinoDialog(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                          title: Text(AppLocalizations.of(context)!.alert),
                          content: Text(selectedLocale?.languageCode == "en"
                              ? response.status ?? ''
                              : response.arstatus ?? ''),
                          actions: [
                            TextButton(
                              onPressed: () {
                                context.read<LoadReqHeaderBloc>().add(
                                    LoadreqSuccessEvent(
                                        userId: widget.user.usrId ?? '',
                                        mode: '',
                                        searchQuery: ''));
                                Navigator.pop(context);
                                Navigator.pop(context);
                              },
                              child:
                                  Text(AppLocalizations.of(context)!.proceed),
                            ),
                          ],
                        ),
                      );
                      // }
                    }
                  },
                  loadReqApprovalFailedState: () {
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
                              context.read<LoadReqDetailBloc>().add(
                                  GetloadreqdetailEvent(
                                      reqId: widget.loadrequest.lrhID ?? "",
                                      searchQuery: ''));
                              Navigator.pop(context);
                            },
                            child: Text(AppLocalizations.of(context)!.ok),
                          ),
                        ],
                      ),
                    );
                  },
                  loadReqApprovalLoadingState: () {
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
              child: SizedBox(
                height: 50.h,
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: MaterialButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: widget.loadrequest.status == 'Pending'
                                  ? Colors.red.shade300
                                  : Colors.grey[300],
                              onPressed: () {
                                log(jsonEncode(LoadReqInApprovalModel(
                                    products: _loadproducts,
                                    reqID: widget.loadrequest.lrhID,
                                    rotID: widget.loadrequest.rotID,
                                    userId: widget.user.usrId)));
                                if (widget.loadrequest.status == 'Pending') {
                                  if (_loadproducts.contains(null)) {
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

                                              Navigator.pop(context);

                                              context
                                                  .read<LoadReqApprovalBloc>()
                                                  .add(
                                                      const ApprovLoadingReqEvent());

                                              context
                                                  .read<LoadReqApprovalBloc>()
                                                  .add(
                                                    ApprovloadReqEvent(
                                                      approval:
                                                          LoadReqInApprovalModel(
                                                              products:
                                                                  _loadproducts,
                                                              reqID: widget
                                                                  .loadrequest
                                                                  .lrhID,
                                                              rotID: widget
                                                                  .loadrequest
                                                                  .rotID,
                                                              userId: widget
                                                                  .loadrequest
                                                                  .userID),
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
                                AppLocalizations.of(context)!.reject,
                                style: kfontstyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                          ),
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
                              color: widget.loadrequest.status == 'Pending'
                                  ? Colors.green.shade300
                                  : Colors.grey[300],
                              onPressed: () {
                                if (widget.loadrequest.status == 'Pending') {
                                  if (_loadproducts.contains(null)) {
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

                                              Navigator.pop(context);

                                              context
                                                  .read<LoadReqApprovalBloc>()
                                                  .add(
                                                      const ApprovLoadingReqEvent());

                                              context
                                                  .read<LoadReqApprovalBloc>()
                                                  .add(ApprovloadReqEvent(
                                                      approval:
                                                          LoadReqInApprovalModel(
                                                              products:
                                                                  _loadproducts,
                                                              reqID: widget
                                                                  .loadrequest
                                                                  .lrhID,
                                                              rotID: widget
                                                                  .loadrequest
                                                                  .rotID,
                                                              userId: widget
                                                                  .loadrequest
                                                                  .userID)));
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
                                AppLocalizations.of(context)!.approve,
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
            ),
          ],
        ),
      ),
    );
  }

  Future<void> onRefreshLoadReqDetailscreen(
      BuildContext context, LoginUserModel model) async {
    context.read<LoadReqDetailBloc>().add(const ClearLodReqDetailEvent());
    context.read<LoadReqDetailBloc>().add(GetloadreqdetailEvent(
        reqId: widget.loadrequest.lrhID ?? '', searchQuery: ''));
  }
}
