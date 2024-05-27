import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approval_reson_model/approval_reson_model.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/material_req_approval_in_model/MaterialReqApprvalInModel.dart';
import 'package:customer_connect/feature/state/bloc/approvereturnprod/approve_return_product_bloc.dart';
import 'package:customer_connect/feature/state/bloc/materialreqapproval/material_req_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/materialreqdetail/material_req_detail_bloc.dart';
import 'package:customer_connect/feature/state/cubit/cubit/navigateto_back_cubit.dart';
import 'package:customer_connect/feature/view/scheduled_return/scheduled_return_detailscreen.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../data/models/material_req_header_model/MaterialReqHeaderModel.dart';

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

class _MaterialRequestDetailScreenState
    extends State<MaterialRequestDetailScreen> {
  @override
  void initState() {
    _approvedCount = 0;
    loadingCount = 0;
    context.read<MaterialReqDetailBloc>().add(const MaterialDetailClearEvent());
    context.read<MaterialReqDetailBloc>().add(
          MaterialReqDetailSuccessEvent(
              reqId: widget.materialrequest.mrhID ?? ''),
        );

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
            if (_approvedCount != 0 && _approvedCount != _totalcount) {
              Future.delayed(const Duration(microseconds: 100), () {
                showPopAlert(context);
              });
            } else {
              Navigator.pop(context);
            }
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
          // canPop: false,
          onPopInvoked: (didPop) {
            if (_approvedCount != 0 && _approvedCount != _totalcount) {
              Future.delayed(const Duration(microseconds: 100), () {
                showPopAlert(context);
              });
            } else {
              // context.read<MaterialReqHeadBloc>().add(
              //     MaterialHeadSuccessEvent(userId: widget.user.usrId ?? ''));
              log("$_approvedCount , $_totalcount");
              context.read<NavigatetoBackCubit>().popFromScreen(true);
            }
          },
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
                                  width: 40.w,
                                ),
                                Text(
                                  'Qty',
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
                    BlocListener<MaterialReqDetailBloc, MaterialReqDetailState>(
                      listener: (context, state) {
                        state.when(
                          materialreqdetailsuccess: (materialdetail) {
                            if (materialdetail != null) {
                              _totalcount = materialdetail.length;

                              statuslist = List.generate(
                                  materialdetail.length, (index) => null);
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
                                            separatorBuilder:
                                                (context, index) => Divider(
                                                      color: Colors.grey[300],
                                                    ),
                                            itemCount: 10),
                                      )
                                    : ListView.separated(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
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
                                                  if (response.mode == '1') {
                                                    showCupertinoDialog(
                                                      context: context,
                                                      builder: (context) =>
                                                          CupertinoAlertDialog(
                                                        title:
                                                            const Text('Alert'),
                                                        content: Text(
                                                            "Product Status Update ${response.status} "),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: const Text(
                                                                'Ok'),
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
                                                        title:
                                                            const Text('Alert'),
                                                        content: Text(
                                                            "Product Status Update ${response.status} ,Try Again"),
                                                        actions: [
                                                          TextButton(
                                                            onPressed: () {
                                                              Navigator.pop(
                                                                  context);
                                                            },
                                                            child: const Text(
                                                                'Ok'),
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
                                                  _approvedCount += 1;
                                                  showCupertinoModalPopup(
                                                      context: context,
                                                      barrierDismissible: false,
                                                      builder: (context) =>
                                                          SizedBox(
                                                            height:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .height,
                                                            width:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                            child:
                                                                const PopScope(
                                                              canPop: true,
                                                              child:
                                                                  CupertinoActivityIndicator(
                                                                animating: true,
                                                                color:
                                                                    Colors.red,
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
                                                    title: const Text('Alert'),
                                                    content: const Text(
                                                        "Something Went Wrong, please Try again later"),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: const Text('Ok'),
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
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
                                                            style: kfontstyle(
                                                              fontSize: 12.sp,
                                                              color: const Color(
                                                                  0xff7b70ac),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                          ),
                                                          Text(
                                                            details[index]
                                                                    .prdName ??
                                                                '',
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
                                                    ),
                                                    Row(
                                                      children: [
                                                        Column(
                                                          children: [
                                                            Text(
                                                              details[index]
                                                                      .reqHUOM ??
                                                                  '',
                                                              style: kfontstyle(
                                                                  fontSize:
                                                                      12.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black54),
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Text(
                                                              details[index]
                                                                      .reqLUOM ??
                                                                  '',
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
                                                        SizedBox(
                                                          width: 50.w,
                                                        ),
                                                        Column(
                                                          children: [
                                                            Text(
                                                              details[index]
                                                                      .adjustedHQty ??
                                                                  '',
                                                              style: kfontstyle(
                                                                  fontSize:
                                                                      12.sp,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  color: Colors
                                                                      .black54),
                                                            ),
                                                            SizedBox(
                                                              height: 10.h,
                                                            ),
                                                            Text(
                                                              details[index]
                                                                      .adjustedLQty ??
                                                                  '',
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
                                                      ],
                                                    )
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    BlocConsumer<
                                                        MaterialReqApprovalBloc,
                                                        MaterialReqApprovalState>(
                                                      listener:
                                                          (context, state) {
                                                        state.when(
                                                          materialReqApprovalSuccessState:
                                                              (response) {
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
                                                          materialReqApprovalFailedState:
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
                                                                              MaterialReqDetailBloc>()
                                                                          .add(const MaterialReqDetailSuccessEvent(
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
                                                          materialReqApprovalLoadingState:
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
                                                                          ? const Color(
                                                                              0xff0075ff)
                                                                          : Colors
                                                                              .grey;
                                                                    }),
                                                                    /* activeColor: isselected == true
                                                                                                                                                                                                                                                            ? const Color(0xff0075ff)
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
                                                                      showCupertinoDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) =>
                                                                                CupertinoAlertDialog(
                                                                          title:
                                                                              const Text('Alert'),
                                                                          content:
                                                                              const Text("Do you Want to Approve this product"),
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
                                                                                statuslist[index] = true;
                                                                                loadingCount = 0;
                                                                                setState(() {});

                                                                                // context
                                                                                //     .read<
                                                                                //         VanToVanApprovalBloc>()
                                                                                //     .add(
                                                                                // const VanToVanApprovalLoadingEvent());
                                                                                context.read<MaterialReqApprovalBloc>().add(
                                                                                      MaterialReqApprovalSuccessEvent(
                                                                                          // approvalIn: VanToVanApprovalInParas(
                                                                                          //     vvdId: details[index].vvdId,
                                                                                          //     hqty: details[index].vvdHQty,
                                                                                          //     lqty: details[index].vvdLQty,
                                                                                          //     status: 'A',
                                                                                          //     userID: '49',
                                                                                          //     reqID: widget.vanToVanHeader.vvhId),
                                                                                          approvalInModel: MaterialReqApprovalInModel(
                                                                                        mrdID: details[index].mrdID,
                                                                                        prdID: details[index].prdID,
                                                                                        reqHUOM: details[index].reqHUOM,
                                                                                        reqLUOM: details[index].reqLUOM,
                                                                                        requestedHQty: details[index].requestedHQty,
                                                                                        requestedLQty: details[index].requestedLQty,
                                                                                        hqty: '1',
                                                                                        lqty: "1",
                                                                                        userId: widget.user.usrId,
                                                                                        reqID: widget.materialrequest.mrhID,
                                                                                        mode: 'A',
                                                                                        warehouse: widget.materialrequest.warName,
                                                                                      )),
                                                                                    );
                                                                                log(jsonEncode(MaterialReqApprovalInModel(
                                                                                  mrdID: details[index].mrdID,
                                                                                  prdID: details[index].prdID,
                                                                                  reqHUOM: details[index].reqHUOM,
                                                                                  reqLUOM: details[index].reqLUOM,
                                                                                  requestedHQty: details[index].requestedHQty,
                                                                                  requestedLQty: details[index].requestedLQty,
                                                                                  hqty: '1',
                                                                                  lqty: "1",
                                                                                  userId: widget.user.usrId,
                                                                                  reqID: widget.materialrequest.mrhID,
                                                                                  mode: 'A',
                                                                                  warehouse: widget.materialrequest.warName,
                                                                                )));

                                                                                Navigator.pop(context);
                                                                              },
                                                                              child: const Text('Proceed'),
                                                                            ),
                                                                          ],
                                                                        ),
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
                                                                              !statuslist[
                                                                                  index]!)
                                                                          ? const Color(
                                                                              0xff0075ff)
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
                                                                      showCupertinoDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (context) =>
                                                                                CupertinoAlertDialog(
                                                                          title:
                                                                              const Text('Alert'),
                                                                          content:
                                                                              const Text("Do you Want to Reject this product"),
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
                                                                                statuslist[index] = false;
                                                                                loadingCount = 0;
                                                                                setState(() {});
                                                                                context.read<MaterialReqApprovalBloc>().add(
                                                                                      MaterialReqApprovalSuccessEvent(
                                                                                          // approvalIn: VanToVanApprovalInParas(
                                                                                          //     vvdId: details[index].vvdId,
                                                                                          //     hqty: details[index].vvdHQty,
                                                                                          //     lqty: details[index].vvdLQty,
                                                                                          //     status: 'R',
                                                                                          //     userID: '49',
                                                                                          //     reqID: widget.vanToVanHeader.vvhId),
                                                                                          approvalInModel: MaterialReqApprovalInModel()),
                                                                                    );

                                                                                Navigator.pop(context);
                                                                              },
                                                                              child: const Text('Proceed'),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      );

                                                                      /* context
                                                                                                                                                                                                                              .read<
                                                                                                                                                                                                                                  AapprovalOrRejectRadioCubit>()
                                                                                                                                                                                                                              .changeApprovalStatus(
                                                                                                                                                                                                                                  statuslist[index]); */
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

                                                    // BlocBuilder<AapprovalOrRejectRadioCubit,
                                                    //     AapprovalOrRejectRadioState>(
                                                    //   builder: (context, state) {
                                                    //     return AbsorbPointer(
                                                    //       absorbing: details[index]
                                                    //           .radApprovalStatus!
                                                    //           .isNotEmpty
                                                    //           ? true
                                                    //           : false,
                                                    //       child: Row(
                                                    //         children: [
                                                    //           Transform.scale(
                                                    //             scale: 0.8,
                                                    //             child: Row(
                                                    //               children: [
                                                    //                 Radio(
                                                    //                   fillColor:
                                                    //                   MaterialStateProperty
                                                    //                       .resolveWith<
                                                    //                       Color>((Set<
                                                    //                       MaterialState>
                                                    //                   states) {
                                                    //                     return (statuslist[
                                                    //                     index] ==
                                                    //                         true)
                                                    //                         ? const Color(
                                                    //                         0xff0075ff)
                                                    //                         : Colors.grey;
                                                    //                   }),
                                                    //                   /* activeColor: isselected == true
                                                    //                                                                                                                     ? const Color(0xff0075ff)
                                                    //                                                                                                                     : Colors.grey, */
                                                    //                   value: statuslist[
                                                    //                   index] ==
                                                    //                       null
                                                    //                       ? false
                                                    //                       : statuslist[
                                                    //                   index] ==
                                                    //                       true
                                                    //                       ? true
                                                    //                       : false,
                                                    //                   groupValue: true,
                                                    //                   onChanged: (value) {
                                                    //                     if (selectedresons[
                                                    //                     index] ==
                                                    //                         '-1') {
                                                    //                       showCupertinoDialog(
                                                    //                         context: context,
                                                    //                         builder: (context) =>
                                                    //                             CupertinoAlertDialog(
                                                    //                               title:
                                                    //                               const Text(
                                                    //                                   'Alert'),
                                                    //                               content: const Text(
                                                    //                                   "Plese select a reason"),
                                                    //                               actions: [
                                                    //                                 TextButton(
                                                    //                                   onPressed:
                                                    //                                       () {
                                                    //                                     Navigator.pop(
                                                    //                                         context);
                                                    //                                   },
                                                    //                                   child:
                                                    //                                   const Text(
                                                    //                                       'Ok'),
                                                    //                                 ),
                                                    //                               ],
                                                    //                             ),
                                                    //                       );
                                                    //                     } else {
                                                    //                       showCupertinoDialog(
                                                    //                         context: context,
                                                    //                         builder: (context) =>
                                                    //                             CupertinoAlertDialog(
                                                    //                               title:
                                                    //                               const Text(
                                                    //                                   'Alert'),
                                                    //                               content: const Text(
                                                    //                                   "Do you Want to Approve this product"),
                                                    //                               actions: [
                                                    //                                 TextButton(
                                                    //                                   onPressed:
                                                    //                                       () {
                                                    //                                     setState(
                                                    //                                             () {});
                                                    //                                     Navigator.pop(
                                                    //                                         context);
                                                    //                                   },
                                                    //                                   child: const Text(
                                                    //                                       'Cancel'),
                                                    //                                 ),
                                                    //                                 TextButton(
                                                    //                                   onPressed:
                                                    //                                       () {
                                                    //                                     statuslist[
                                                    //                                     index] =
                                                    //                                     true;
                                                    //                                     loadingCount =
                                                    //                                     0;
                                                    //                                     setState(
                                                    //                                             () {});
                                                    //                                     Navigator.pop(
                                                    //                                         context);
                                                    //                                     context
                                                    //                                         .read<
                                                    //                                         ApproveReturnProductBloc>()
                                                    //                                         .add(
                                                    //                                         const AddApprovalLoadingEvent());
                                                    //
                                                    //                                     // context
                                                    //                                     //     .read<
                                                    //                                     //     ApproveReturnProductBloc>()
                                                    //                                     //     .add(
                                                    //                                     //   ApproveProductEvent(
                                                    //                                     //     approval: ReturnApproveInModel(radId: details[index].radId, reason: selectedresons[index], status: 'A',
                                                    //                                     //         returnID: widget.returnApprovel.rahId, userID: '45'),
                                                    //                                     //   ),
                                                    //                                     // );
                                                    //                                   },
                                                    //                                   child: const Text(
                                                    //                                       'Proceed'),
                                                    //                                 ),
                                                    //                               ],
                                                    //                             ),
                                                    //                       );
                                                    //                     }
                                                    //
                                                    //                     /*  context
                                                    //                                                                                       .read<
                                                    //                                                                                           AapprovalOrRejectRadioCubit>()
                                                    //                                                                                       .changeApprovalStatus(
                                                    //                                                                                           statuslist[index]); */
                                                    //                   },
                                                    //                 ),
                                                    //                 Text(
                                                    //                   'Approve',
                                                    //                   style: kfontstyle(),
                                                    //                 )
                                                    //               ],
                                                    //             ),
                                                    //           ),
                                                    //           Transform.scale(
                                                    //             scale: 0.8,
                                                    //             child: Row(
                                                    //               children: [
                                                    //                 Radio(
                                                    //                   fillColor:
                                                    //                   MaterialStateProperty
                                                    //                       .resolveWith<
                                                    //                       Color>((Set<
                                                    //                       MaterialState>
                                                    //                   states) {
                                                    //                     return (statuslist[
                                                    //                     index] !=
                                                    //                         null &&
                                                    //                         !statuslist[
                                                    //                         index]!)
                                                    //                         ? const Color(
                                                    //                         0xff0075ff)
                                                    //                         : Colors.grey;
                                                    //                   }),
                                                    //                   /*  activeColor: isselected == false
                                                    //                                                                                                                     ? const Color(0xff0075ff)
                                                    //                                                                                                                     : Colors.grey, */
                                                    //                   value: statuslist[
                                                    //                   index] ==
                                                    //                       null
                                                    //                       ? true
                                                    //                       : statuslist[
                                                    //                   index] ==
                                                    //                       true
                                                    //                       ? true
                                                    //                       : false,
                                                    //                   groupValue: false,
                                                    //                   onChanged: (value) {
                                                    //                     if (selectedresons[
                                                    //                     index] ==
                                                    //                         '-1') {
                                                    //                       showCupertinoDialog(
                                                    //                         context: context,
                                                    //                         builder: (context) =>
                                                    //                             CupertinoAlertDialog(
                                                    //                               title:
                                                    //                               const Text(
                                                    //                                   'Alert'),
                                                    //                               content: const Text(
                                                    //                                   "Plese select a reason"),
                                                    //                               actions: [
                                                    //                                 TextButton(
                                                    //                                   onPressed:
                                                    //                                       () {
                                                    //                                     Navigator.pop(
                                                    //                                         context);
                                                    //                                   },
                                                    //                                   child:
                                                    //                                   const Text(
                                                    //                                       'Ok'),
                                                    //                                 ),
                                                    //                               ],
                                                    //                             ),
                                                    //                       );
                                                    //                     } else {
                                                    //                       showCupertinoDialog(
                                                    //                         context: context,
                                                    //                         builder: (context) =>
                                                    //                             CupertinoAlertDialog(
                                                    //                               title:
                                                    //                               const Text(
                                                    //                                   'Alert'),
                                                    //                               content: const Text(
                                                    //                                   "Do you Want to Reject this product"),
                                                    //                               actions: [
                                                    //                                 TextButton(
                                                    //                                   onPressed:
                                                    //                                       () {
                                                    //                                     setState(
                                                    //                                             () {});
                                                    //                                     Navigator.pop(
                                                    //                                         context);
                                                    //                                   },
                                                    //                                   child: const Text(
                                                    //                                       'Cancel'),
                                                    //                                 ),
                                                    //                                 TextButton(
                                                    //                                   onPressed:
                                                    //                                       () {
                                                    //                                     statuslist[
                                                    //                                     index] =
                                                    //                                     false;
                                                    //
                                                    //                                     loadingCount =
                                                    //                                     0;
                                                    //                                     setState(
                                                    //                                             () {});
                                                    //                                     Navigator.pop(
                                                    //                                         context);
                                                    //                                     context
                                                    //                                         .read<
                                                    //                                         ApproveReturnProductBloc>()
                                                    //                                         .add(
                                                    //                                         const AddApprovalLoadingEvent());
                                                    //                                     context
                                                    //                                         .read<
                                                    //                                         ApproveReturnProductBloc>()
                                                    //                                         .add(
                                                    //                                       ApproveProductEvent(
                                                    //                                         approval: ReturnApproveInModel(radId: details[index].radId, reason: selectedresons[index], status: 'R',
                                                    //                                             returnID: widget.returnApprovel.rahId, userID: '45'),
                                                    //                                       ),
                                                    //                                     );
                                                    //                                   },
                                                    //                                   child: const Text(
                                                    //                                       'Proceed'),
                                                    //                                 ),
                                                    //                               ],
                                                    //                             ),
                                                    //                       );
                                                    //                     }
                                                    //
                                                    //                     /* context
                                                    //                                                                                       .read<
                                                    //                                                                                           AapprovalOrRejectRadioCubit>()
                                                    //                                                                                       .changeApprovalStatus(
                                                    //                                                                                           statuslist[index]); */
                                                    //                   },
                                                    //                 ),
                                                    //                 Text(
                                                    //                   'Reject',
                                                    //                   style: kfontstyle(),
                                                    //                 )
                                                    //               ],
                                                    //             ),
                                                    //           )
                                                    //         ],
                                                    //       ),
                                                    //     );
                                                    //   },
                                                    // )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        separatorBuilder: (context, index) =>
                                            Divider(
                                          color: Colors.grey[300],
                                        ),
                                        itemCount: details.length,
                                      ),
                            materialreqdetailFailed: () => SizedBox(
                              height: MediaQuery.of(context).size.height,
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
    );
  }

  Future<void> _onRefreshMaterialReqDetailScreen(
      BuildContext context, LoginUserModel model) async {
    context.read<MaterialReqDetailBloc>().add(const MaterialDetailClearEvent());
    context.read<MaterialReqDetailBloc>().add(MaterialReqDetailSuccessEvent(
        reqId: widget.materialrequest.mrhID ?? ''));
  }
}
