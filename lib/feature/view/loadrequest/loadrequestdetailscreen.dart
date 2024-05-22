import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approval_reson_model/approval_reson_model.dart';
import 'package:customer_connect/feature/data/models/load_req_header_model/LoadReqHeaderModel.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/return_approval_header_model/return_approval_header_model.dart';
import 'package:customer_connect/feature/data/models/return_approve_in_model/return_approve_in_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalreasons/approval_reasons_bloc.dart';
import 'package:customer_connect/feature/state/bloc/approvereturnprod/approve_return_product_bloc.dart';
import 'package:customer_connect/feature/state/bloc/loadreqdetail/load_req_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/materialreqdetail/material_req_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/materialreqhead/material_req_head_bloc.dart';
import 'package:customer_connect/feature/state/bloc/returnapproval/return_approval_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/returnapprovaldetail/return_approval_detail_bloc.dart';
import 'package:customer_connect/feature/state/cubit/approvalradio/aapproval_or_reject_radio_cubit.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/models/material_req_header_model/MaterialReqHeaderModel.dart';

class LoadReqDetailscreen extends StatefulWidget {
  //final ReturnApprovalHeaderModel returnApprovel;

  final LoadReqHeaderModel loadrequest;
  final LoginUserModel user;
  const LoadReqDetailscreen(
      {super.key, required this.user,  required this.loadrequest});

  @override
  State<LoadReqDetailscreen> createState() =>
      _LoadReqDetailscreenState();
}

List<String> selectedresons = [];
List<bool?> statuslist = [];
bool isLoading = false;

int loadingCount = 0;
List<ApprovalResonModel> availableresons = [];
int approvedCount = 0;

class _LoadReqDetailscreenState
    extends State<LoadReqDetailscreen> {
  @override
  void initState() {
    approvedCount = 0;
    loadingCount = 0;
    context
        .read<MaterialReqDetailBloc>()
        .add(const MaterialDetailClearEvent());
    context.read<MaterialReqDetailBloc>().add(const
    MaterialReqDetailSuccessEvent(
        reqId: '1'),
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
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
        ),
        title: Text(
          "Load request Detail",
          style: appHeading(),
        ),
      ),
      body: PopScope(
        onPopInvoked: (didPop) {
          context
              .read<LoadReqDetailBloc>()
              .add(const ClearLodReqDetailEvent());
          context.read<LoadReqDetailBloc>().add(
              GetloadreqdetailEvent(reqId: widget.user.usrId??'') //widget.user.usrId??''
          );
        },
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
            Expanded(
                child: BlocBuilder<LoadReqDetailBloc, LoadReqDetailState>(
                  builder: (context, state) {
                    return state.when(
                      loadreqDetailSuccessState: (details) => details == null
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
                          : ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) => BlocListener<
                            ApproveReturnProductBloc,
                            ApproveReturnProductState>(
                          listener: (context, state) {
                            state.when(
                              approveReturnProductdSTatusState: (response) {
                                if (response != null) {
                                  Navigator.pop(context);
                                  isLoading = false;
                                  if (response.mode == '1') {
                                    showCupertinoDialog(
                                      context: context,
                                      builder: (context) =>
                                          CupertinoAlertDialog(
                                            title: const Text('Alert'),
                                            content: Text(
                                                "Product Status Update ${response.status} "),
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
                                  } else {
                                    statuslist[index] = null;
                                    setState(() {});
                                    Navigator.pop(context);
                                    showCupertinoDialog(
                                      context: context,
                                      builder: (context) =>
                                          CupertinoAlertDialog(
                                            title: const Text('Alert'),
                                            content: Text(
                                                "Product Status Update ${response.status} ,Try Again"),
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
                                        height: MediaQuery.of(context)
                                            .size
                                            .height,
                                        width: MediaQuery.of(context)
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
                          child: Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 20),
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
                                            details[index].prdCode ?? '',
                                            style: kfontstyle(
                                              fontSize: 12.sp,
                                              color: const Color(0xff7b70ac),
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Text(
                                            details[index].prdName ?? '',
                                            style: kfontstyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Text(
                                              "hai hw rb u"//details[index].reqHUOM??
                                                  '',
                                              style: kfontstyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black54),
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Text(
                                              "halo"
                                             // details[index].reqLUOM??
                                                  '',
                                              style: kfontstyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black54),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 50.w,
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                          "jsnjhx"
                                              //details[index].adjustedHQty
                                                  ?? '',
                                              style: kfontstyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black54),
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Text(
                                              "absxb"
                                              //details[index].adjustedLQty
                                                  ?? '',
                                              style: kfontstyle(
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.black54),
                                            ),
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const Row(
                                  children: [

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
                        separatorBuilder: (context, index) => Divider(
                          color: Colors.grey[300],
                        ),
                        itemCount: details.length,
                      ), loadreqDetailFailedState: () =>
                      Center(
                        child: Text(
                          'No Data Available',
                          style: kfontstyle(),
                        ),
                      )
                    ,

                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}

//
