import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approval_reson_model/approval_reson_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/material_req_approval_in_model/MaterialReqApprvalInModel.dart';
import 'package:customer_connect/feature/data/models/material_req_rejection_in_model/MaterialReqRejectionInModel.dart';
import 'package:customer_connect/feature/data/models/matrial_apr_req_prd_model/matrial_apr_req_prd_model.dart';
import 'package:customer_connect/feature/state/bloc/materialreqapproval/material_req_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/materialreqdetail/material_req_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/materialreqhead/material_req_head_bloc.dart';
import 'package:customer_connect/feature/state/cubit/navigatetoback/navigateto_back_cubit.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/models/material_req_header_model/MaterialReqHeaderModel.dart';
import '../LoadInDetail/load_detail_completed.dart';

class MaterialRequestDetailScreen extends StatefulWidget {
  //final ReturnApprovalHeaderModel returnApprovel;
  final MaterialReqHeaderModel materialrequest;
  final LoginUserModel user;
  const MaterialRequestDetailScreen(
      {super.key, required this.user, required this.materialrequest});

  @override
  State<MaterialRequestDetailScreen> createState() =>
      _MaterialRequestDetailScreenState();
}

List<String> selectedresons = [];
List<bool?> statuslist = [];
bool isLoading = false;

int loadingCount = 0;
List<ApprovalResonModel> availableresons = [];
int _approvedCount = 0;

int _totalcount = 0;

List<MatrialAprReqPrdModel?> _materialreqproducts = [];
List<MatrialAprReqPrdModel?> _materialreqproductsReject = [];
TextEditingController _materialreqdetailSerachController = TextEditingController();
TextEditingController _apprvLQtymqController = TextEditingController();
TextEditingController _apprvHQtymqController = TextEditingController();
class _MaterialRequestDetailScreenState
    extends State<MaterialRequestDetailScreen> {
  @override
  void initState() {
    _approvedCount = 0;
    loadingCount = 0;
    context.read<MaterialReqDetailBloc>().add(const MaterialDetailClearEvent());
    context.read<MaterialReqDetailBloc>().add(
          MaterialReqDetailSuccessEvent(
              reqId: widget.materialrequest.mrhID ?? '', searchQuery: ''),
        );
    _materialreqdetailSerachController.clear();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log(widget.materialrequest.userID ?? 'onnulla');
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        titleSpacing: 0.5,
        leading: IconButton(
          onPressed: () {
            // if (_approvedCount != 0 && _approvedCount != _totalcount) {
            //   Future.delayed(const Duration(microseconds: 100), () {
            //     showPopAlert(context);
            //   });
            // } else {
            Navigator.pop(context);
            // }
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          "Material request Detail",
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
            // if (_approvedCount != 0 && _approvedCount != _totalcount) {
            //   Future.delayed(const Duration(microseconds: 100), () {
            //     showPopAlert(context);
            //   });
            // } else {
            context
                .read<MaterialReqHeadBloc>()
                .add(MaterialHeadSuccessEvent(userId: widget.user.usrId ?? '', mode: '', searchQuery: ''));
            //   log("$_approvedCount , $_totalcount");
            //   context.read<NavigatetoBackCubit>().popFromScreen(true);
            // }
          },
          child: Column(
            children: [
              BlocListener<MaterialReqApprovalBloc, MaterialReqApprovalState>(
                listener: (context, state) {
                  state.when(
                    materialReqApprovalSuccessState: (response) {
                      if (response != null) {
                        Navigator.pop(context);
                        if (response.status != null) {
                          showCupertinoDialog(
                            context: context,
                            builder: (context) => CupertinoAlertDialog(
                              title: const Text('Alert'),
                              content: Text(
                                  "Product Status Update ${response.status} "),
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
                      }
                    },
                    materialReqApprovalLoadingState: () {
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
                    materialReqApprovalFailedState: () {
                      Navigator.pop(context);

                      showCupertinoDialog(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                          title: const Text('Alert'),
                          content: const Text(
                              "Something Went Wrong, please Try again later"),
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
                  );
                },
                child: Expanded(
                  child: RefreshIndicator(
                    triggerMode: RefreshIndicatorTriggerMode.anywhere,
                    color: const Color.fromARGB(255, 181, 218, 245),
                    displacement: BorderSide.strokeAlignCenter,
                    onRefresh: () => _onRefreshMaterialReqDetailScreen(
                        context,
                        widget
                            .user), //_onRefreshMaterialReqHeaderScreen(context,widget.user),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: SingleChildScrollView(
                        physics: const AlwaysScrollableScrollPhysics(),
                        child: Column(
                          children: [

                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                children: [
                                  Container(
                                    height: 50,
                                    width: 10,
                                    decoration: BoxDecoration(
                                        color: const Color(0xfffee8e0),
                                        borderRadius:
                                            BorderRadius.circular(20)),
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
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                widget.materialrequest
                                                        .mrhNumber ??
                                                    '',
                                                style: kfontstyle(
                                                  fontSize: 12.sp,
                                                  color:
                                                      const Color(0xff2C6B9E),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '${widget.materialrequest.strName} - ',
                                                    style: kfontstyle(
                                                      fontSize: 11.sp,
                                                      color: const Color(
                                                          0xff2C6B9E),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      widget.materialrequest
                                                              .warName ??
                                                          '',
                                                      style: kfontstyle(
                                                          fontSize: 12.sp,
                                                          color: const Color(
                                                              0xff413434)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                widget.materialrequest
                                                        .createdDate ??
                                                    '',
                                                style: kfontstyle(
                                                    fontSize: 10.sp,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          // height: 10.h,
                                          // width: 10.h,
                                          decoration: BoxDecoration(
                                            color: widget.materialrequest
                                                        .status!.isEmpty ||
                                                    widget.materialrequest
                                                            .status !=
                                                        'A'
                                                ? widget.materialrequest
                                                            .status !=
                                                        'AH'
                                                    ? Colors.red[300]
                                                    : const Color(0xfff7f4e2)
                                                : const Color(0xffe3f7e2),
                                            borderRadius: BorderRadius.circular(
                                              10,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 3),
                                            child: Text(
                                              widget.materialrequest.status ??
                                                  "",
                                              style:
                                                  kfontstyle(fontSize: 10.sp),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.h,),
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
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
                                    controller: _materialreqdetailSerachController,
                                    onChanged: (value) {
                                      debounce = Timer(
                                          const Duration(
                                            milliseconds: 500,
                                          ), () async {
                                        context.read<MaterialReqDetailBloc>().add(
                                            MaterialReqDetailSuccessEvent(

                                                searchQuery: _materialreqdetailSerachController.text, reqId: ''));
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
                                                  if (_materialreqdetailSerachController
                                                      .text.isNotEmpty) {
                                                    _materialreqdetailSerachController.clear();

                                                    context
                                                        .read<MaterialReqDetailBloc>()
                                                        .add(const MaterialReqDetailSuccessEvent(
                                                        //mode: _selectedloadrequest,
                                                        searchQuery: "", reqId: ''));
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
                                        hintText: "Search Items",
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
                                      'Item',
                                      style: boxHeading(),),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                            'UOM',
                                            style: boxHeading()
                                        ),
                                        SizedBox(
                                          width: 30.w,
                                        ),
                                        Text(
                                            'Req Qty',
                                            style: boxHeading()
                                        ),
                                        SizedBox(
                                          width: 30.w,
                                        ),
                                        Text(
                                            'Appr Qty',
                                            style: boxHeading()
                                        ),
                                        SizedBox(
                                          width: 10.w,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            BlocListener<MaterialReqDetailBloc,
                                MaterialReqDetailState>(
                              listener: (context, state) {
                                state.when(
                                  materialreqdetailsuccess: (materialdetail) {
                                    if (materialdetail != null) {
                                      _materialreqproducts = List.generate(
                                          materialdetail.length,
                                          (index) => null);

                                      _totalcount = materialdetail.length;

                                      for (int i = 0;
                                          i < materialdetail.length;
                                          i++) {
                                        _materialreqproducts[i] =
                                            MatrialAprReqPrdModel(
                                          mrdId: materialdetail[i].mrdID,
                                          prdId: materialdetail[i].prdID,
                                          reqHuom: materialdetail[i].reqHUOM,
                                          reqLuom: materialdetail[i].reqLUOM,
                                          requestedHQty:
                                              materialdetail[i].requestedHQty,
                                          requestedLQty:
                                              materialdetail[i].requestedLQty,
                                          hqty: materialdetail[i].adjustedHQty,
                                          lqty: materialdetail[i].adjustedLQty,
                                        );
                                      }
                                      statuslist = List.generate(
                                          materialdetail.length,
                                          (index) => null);
                                    }
                                  },
                                  materialreqdetailFailed: () {},
                                );
                              },
                              child: BlocBuilder<MaterialReqDetailBloc,
                                  MaterialReqDetailState>(
                                builder: (context, state) {
                                  return state.when(
                                    materialreqdetailsuccess: (details) =>
                                        details == null
                                            ? Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 0),
                                                child: ListView.separated(
                                                    physics:
                                                        const NeverScrollableScrollPhysics(),
                                                    shrinkWrap: true,
                                                    itemBuilder: (context,
                                                            index) =>
                                                        ShimmerContainers(
                                                            height: 60.h,
                                                            width: double
                                                                .infinity),
                                                    separatorBuilder: (context,
                                                            index) =>
                                                        Divider(
                                                          color:
                                                              Colors.grey[300],
                                                        ),
                                                    itemCount: 10),
                                              )
                                            : ListView.separated(
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                itemBuilder: (context, index) =>
                                                    Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Expanded(
                                                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
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
                                                                Text(
                                                                  details[index].prdName ?? '',
                                                                  style: kfontstyle(
                                                                      fontSize:
                                                                          12.sp,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      color: Colors
                                                                          .black54),
                                                                ),
                                                              ],
                                                            ),
                                                          ),

                                                          SizedBox(
                                                            width: MediaQuery.of(context).size.width/2.w,
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              children: [
                                                                Column(
                                                                  children: [
                                                                    Text(
                                                                       details[index].reqHUOM?? '',
                                                                      style: kfontstyle(
                                                                          fontSize: 12.sp,
                                                                          fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                          color: Colors
                                                                              .black54),
                                                                    ),
                                                                    SizedBox(height: 5.h,),
                                                                    Text(details[index].reqLUOM?? '',
                                                                      style: kfontstyle(
                                                                          fontSize: 12.sp,
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
                                                                      details[index].requestedHQty?? '',
                                                                      style: kfontstyle(
                                                                          fontSize: 12.sp,
                                                                          fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                          color: Colors
                                                                              .black54),
                                                                    ),
                                                                    SizedBox(height: 5.h,),
                                                                    Text(details[index].requestedLQty?? '',
                                                                      style: kfontstyle(
                                                                          fontSize: 12.sp,
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
                                                                      child: TextFormField(
                                                                         controller: _apprvHQtymqController,
                                                                        style: const TextStyle(
                                                                            fontSize: 9
                                                                        ),
                                                                        decoration: InputDecoration(
                                                                            enabledBorder: const OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                  color: Colors.black12, width: 1),
                                                                            ),
                                                                            focusedBorder: const OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                  color: Colors.grey, width: 1.0),
                                                                            ),
                                                                            fillColor: const Color(0xfff5f5f5),
                                                                            filled: true,
                                                                            border: OutlineInputBorder(

                                                                              borderSide: const BorderSide(
                                                                                  color: Colors.red, width: 4),
                                                                              borderRadius: BorderRadius.circular(5),

                                                                            )
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    SizedBox(height: 5.h,),
                                                                    SizedBox(
                                                                      height: 25,
                                                                      width: 80,
                                                                      child: TextFormField(
                                                                        controller: _apprvLQtymqController,
                                                                        style: const TextStyle(
                                                                            fontSize: 9
                                                                        ),
                                                                        decoration: InputDecoration(
                                                                            enabledBorder: const OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                  color: Colors.black12, width: 1),
                                                                            ),
                                                                            focusedBorder: const OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                  color: Colors.grey, width: 1.0),
                                                                            ),
                                                                            fillColor: const Color(0xfff5f5f5),
                                                                            filled: true,
                                                                            border: OutlineInputBorder(

                                                                              borderSide: const BorderSide(
                                                                                  color: Colors.red, width: 4),
                                                                              borderRadius: BorderRadius.circular(5),

                                                                            )
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                )
                                                              ],
                                                            ),
                                                          ),

                                                          // Row(
                                                          //   children: [
                                                          //     Column(
                                                          //       children: [
                                                          //         Text(
                                                          //           details[index]
                                                          //                   .reqHUOM ??
                                                          //               '',
                                                          //           style: kfontstyle(
                                                          //               fontSize: 12
                                                          //                   .sp,
                                                          //               fontWeight:
                                                          //                   FontWeight
                                                          //                       .w400,
                                                          //               color: Colors
                                                          //                   .black54),
                                                          //         ),
                                                          //
                                                          //         // SizedBox(
                                                          //         //   height:
                                                          //         //       10.h,
                                                          //         // ),
                                                          //         Text(
                                                          //           details[index]
                                                          //                   .reqLUOM ??
                                                          //               '',
                                                          //           style: kfontstyle(
                                                          //               fontSize: 12
                                                          //                   .sp,
                                                          //               fontWeight:
                                                          //                   FontWeight
                                                          //                       .w400,
                                                          //               color: Colors
                                                          //                   .black54),
                                                          //         ),
                                                          //       ],
                                                          //     ),
                                                          //     SizedBox(
                                                          //       width: 50.w,
                                                          //     ),
                                                          //     Column(
                                                          //       children: [
                                                          //         Text(
                                                          //           details[index]
                                                          //                   .requestedHQty ??
                                                          //               '',
                                                          //           style: kfontstyle(
                                                          //               fontSize: 12
                                                          //                   .sp,
                                                          //               fontWeight:
                                                          //                   FontWeight
                                                          //                       .w400,
                                                          //               color: Colors
                                                          //                   .black54),
                                                          //         ),
                                                          //         SizedBox(
                                                          //           height:
                                                          //               10.h,
                                                          //         ),
                                                          //         Text(
                                                          //           details[index]
                                                          //                   .requestedLQty ??
                                                          //               '',
                                                          //           style: kfontstyle(
                                                          //               fontSize: 12
                                                          //                   .sp,
                                                          //               fontWeight:
                                                          //                   FontWeight
                                                          //                       .w400,
                                                          //               color: Colors
                                                          //                   .black54),
                                                          //         ),
                                                          //       ],
                                                          //     ),
                                                          //   ],
                                                          // )
                                                        ],
                                                      ),
                                                      // Row(
                                                      //   children: [
                                                      //     Expanded(
                                                      //       // width: MediaQuery.of(
                                                      //       //         context)
                                                      //       //     .size
                                                      //       //     .width,
                                                      //       child: Row(
                                                      //         mainAxisAlignment:
                                                      //             MainAxisAlignment
                                                      //                 .end,
                                                      //         children: [
                                                      //           Text(
                                                      //             details[index]
                                                      //                     .reqHUOM ??
                                                      //                 '',
                                                      //             style: kfontstyle(
                                                      //                 fontSize:
                                                      //                     12.sp,
                                                      //                 fontWeight:
                                                      //                     FontWeight
                                                      //                         .w400,
                                                      //                 color: Colors
                                                      //                     .black54),
                                                      //           ),
                                                      //           SizedBox(
                                                      //             width: 10.w,
                                                      //           ),
                                                      //           Flexible(
                                                      //               flex: 2,
                                                      //               fit: FlexFit
                                                      //                   .tight,
                                                      //               child:
                                                      //                   TextFormField(
                                                      //                 keyboardType:
                                                      //                     TextInputType
                                                      //                         .number,
                                                      //                 controller:
                                                      //                     TextEditingController(
                                                      //                   text: details[index]
                                                      //                       .adjustedHQty,
                                                      //                 ),
                                                      //                 style: kfontstyle(
                                                      //                     fontSize:
                                                      //                         13.sp),
                                                      //                 onChanged:
                                                      //                     (value) {
                                                      //                   details[index].adjustedHQty =
                                                      //                       value;
                                                      //                   _materialreqproducts[index] =
                                                      //                       MatrialAprReqPrdModel(
                                                      //                     mrdId:
                                                      //                         details[index].mrdID,
                                                      //                     prdId:
                                                      //                         details[index].prdID,
                                                      //                     reqHuom:
                                                      //                         details[index].reqHUOM,
                                                      //                     reqLuom:
                                                      //                         details[index].reqLUOM,
                                                      //                     requestedHQty:
                                                      //                         details[index].requestedHQty,
                                                      //                     requestedLQty:
                                                      //                         details[index].requestedLQty,
                                                      //                     hqty:
                                                      //                         details[index].adjustedHQty,
                                                      //                     lqty:
                                                      //                         details[index].adjustedLQty,
                                                      //                   );
                                                      //                 },
                                                      //               )),
                                                      //           const Spacer(),
                                                      //           Text(
                                                      //             details[index]
                                                      //                     .reqLUOM ??
                                                      //                 '',
                                                      //             style: kfontstyle(
                                                      //                 fontSize:
                                                      //                     12.sp,
                                                      //                 fontWeight:
                                                      //                     FontWeight
                                                      //                         .w400,
                                                      //                 color: Colors
                                                      //                     .black54),
                                                      //           ),
                                                      //           SizedBox(
                                                      //             width: 10.w,
                                                      //           ),
                                                      //           Flexible(
                                                      //               flex: 2,
                                                      //               fit: FlexFit
                                                      //                   .tight,
                                                      //               child:
                                                      //                   TextFormField(
                                                      //                 keyboardType:
                                                      //                     TextInputType
                                                      //                         .number,
                                                      //                 controller:
                                                      //                     TextEditingController(
                                                      //                   text: details[index]
                                                      //                       .adjustedLQty,
                                                      //                 ),
                                                      //                 onChanged:
                                                      //                     (value) {
                                                      //                   details[index].adjustedLQty =
                                                      //                       value;
                                                      //
                                                      //                   _materialreqproducts[index] =
                                                      //                       MatrialAprReqPrdModel(
                                                      //                     mrdId:
                                                      //                         details[index].mrdID,
                                                      //                     prdId:
                                                      //                         details[index].prdID,
                                                      //                     reqHuom:
                                                      //                         details[index].reqHUOM,
                                                      //                     reqLuom:
                                                      //                         details[index].reqLUOM,
                                                      //                     requestedHQty:
                                                      //                         details[index].requestedHQty,
                                                      //                     requestedLQty:
                                                      //                         details[index].requestedLQty,
                                                      //                     hqty:
                                                      //                         details[index].adjustedHQty,
                                                      //                     lqty:
                                                      //                         details[index].adjustedLQty,
                                                      //                   );
                                                      //                 },
                                                      //               )),
                                                      //         ],
                                                      //       ),
                                                      //     ),
                                                      //   ],
                                                      // )
                                                    ],
                                                  ),
                                                ),
                                                separatorBuilder:
                                                    (context, index) => Divider(
                                                  color: Colors.grey[300],
                                                ),
                                                itemCount: details.length,
                                              ),
                                    materialreqdetailFailed: () => SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height,
                                      child: Center(
                                        child: Text(
                                          'No Data Available',
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
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.15,
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
                              height: 30.h,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: /* widget.materialrequest
                                          . ==
                                      'Pending'
                                  ? */
                                  Colors.red.shade300 /* : Colors.grey[300] */,
                              onPressed: () {
                                log(jsonEncode(_materialreqproducts));
                                showCupertinoDialog(
                                  context: context,
                                  builder: (context) => CupertinoAlertDialog(
                                    title: const Text('Alert'),
                                    content: const Text(
                                        "Do you Want to Reject this request"),
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
                                          context
                                              .read<MaterialReqApprovalBloc>()
                                              .add(
                                                  const MaterialReqApprovalLoadingEvent());
                                          context
                                              .read<MaterialReqApprovalBloc>()
                                              .add(
                                                MetarialRequestRejectEvent(
                                                    reject: MaterialReqRejectionInModel(
                                                        products:
                                                            _materialreqproducts,
                                                        userId: widget
                                                            .materialrequest
                                                            .userID,
                                                        reqID: widget
                                                            .materialrequest
                                                            .mrhID,
                                                        remark: '')),
                                              );

                                          Navigator.pop(context);
                                        },
                                        child: const Text('Proceed'),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              child: Text(
                                'Reject',
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
                              height: 30.h,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              color: /* widget.materialrequest
                                          . ==
                                      'Pending'
                                  ? */
                                  Colors
                                      .green.shade300 /* : Colors.grey[300] */,
                              onPressed: () {
                                showCupertinoDialog(
                                  context: context,
                                  builder: (context) => CupertinoAlertDialog(
                                    title: const Text('Alert'),
                                    content: const Text(
                                        "Do you Want to Approve this product"),
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
                                          context
                                              .read<MaterialReqApprovalBloc>()
                                              .add(
                                                  const MaterialReqApprovalLoadingEvent());
                                          context
                                              .read<MaterialReqApprovalBloc>()
                                              .add(
                                                MaterialReqApprovalSuccessEvent(
                                                    approvalInModel:
                                                        MaterialReqApprovalInModel(
                                                  products:
                                                      _materialreqproducts,
                                                  userId: widget
                                                      .materialrequest.userID,
                                                  reqID: widget
                                                      .materialrequest.mrhID,
                                                  mode: "A",
                                                  warehouse: widget
                                                      .materialrequest.mrhWarID,
                                                )),
                                              );

                                          Navigator.pop(context);
                                        },
                                        child: const Text('Proceed'),
                                      ),
                                    ],
                                  ),
                                );
                              },
                              child: Text(
                                'Approve',
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

  Future<void> _onRefreshMaterialReqDetailScreen(
      BuildContext context, LoginUserModel model) async {
    context.read<MaterialReqDetailBloc>().add(const MaterialDetailClearEvent());
    context.read<MaterialReqDetailBloc>().add(MaterialReqDetailSuccessEvent(
        reqId: widget.materialrequest.mrhID ?? '', searchQuery: ''));
  }
}
