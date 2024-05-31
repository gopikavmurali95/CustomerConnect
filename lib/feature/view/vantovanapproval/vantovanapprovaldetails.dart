import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/van_to_van_approval_in_paras/van_to_van_approval_in_paras.dart';
import 'package:customer_connect/feature/data/models/van_to_van_header_model/van_to_van_header_model.dart';
import 'package:customer_connect/feature/data/models/van_to_van_product_model/van_to_van_product_model.dart';
import 'package:customer_connect/feature/state/bloc/vantovanapproval/van_to_van_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/vantovandetails/van_to_van_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/vantovanheader/van_to_van_header_bloc.dart';
import 'package:customer_connect/feature/state/cubit/navigatetoback/navigateto_back_cubit.dart';
import 'package:customer_connect/feature/view/scheduled_return/scheduled_return_detailscreen.dart';

import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VanToVanApprovalDetails extends StatefulWidget {
  final LoginUserModel user;
  final VanToVanHeaderModel vanToVanHeader;
  const VanToVanApprovalDetails(
      {super.key, required this.user, required this.vanToVanHeader});

  @override
  State<VanToVanApprovalDetails> createState() =>
      _VanToVanApprovalDetailsState();
}

List<bool?> statuslist = [];
int loadingCount = 0;
int _totalcount = 0;
int _approvedCount = 0;
List<VanToVanProductModel?> approvedProducts = [];

class _VanToVanApprovalDetailsState extends State<VanToVanApprovalDetails> {
  @override
  void initState() {
    _totalcount = 0;
    _approvedCount = 0;

    context.read<VanToVanDetailsBloc>().add(const clearVanToVanDetailEvent());
    context
        .read<VanToVanDetailsBloc>()
        .add(GetVanToVanDetailEvent(reqID: widget.vanToVanHeader.vvhId ?? ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // log(widget.vanToVanHeader.userID ?? '');
    return Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          titleSpacing: 0.5,
          leading: IconButton(
            onPressed: () {
              /*   if (_approvedCount != 0 && _approvedCount != _totalcount) {
              Future.delayed(const Duration(microseconds: 100), () {
                showPopAlert(context);
              });
            } else {
              context.read<NavigatetoBackCubit>().popFromScreen(true);
            } */

              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_rounded,
              size: 20,
            ),
          ),
          title: Text(
            "Van To Van approval Details",
            style: appHeading(),
          ),
        ),
        body: PopScope(
            // canPop: false,
            onPopInvoked: (didPop) {
              // log("$_totalcount $_approvedCount");
              // if (_approvedCount != 0 && _approvedCount != _totalcount) {
              //   Future.delayed(const Duration(microseconds: 100), () {
              //     showPopAlert(context);
              //   });
              // } else {
              //   context
              //       .read<VanToVanHeaderBloc>()
              //       .add(const getVanToVanHeaderEvent(userID: '49'));
              //   context.read<NavigatetoBackCubit>().popFromScreen(true);
              // }

              context.read<VanToVanHeaderBloc>().add(getVanToVanHeaderEvent(
                  userID: widget.vanToVanHeader.userID ?? ''));
            },
            child: Column(children: [
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
                child: BlocListener<VanToVanDetailsBloc, VanToVanDetailsState>(
                    listener: (context, state) {
                  state.when(
                    getVanToVanDetailsState: ((details) {
                      if (details != null) {
                        // _totalcount = details.length;
                        approvedProducts =
                            List.generate(details.length, (index) => null);
                        statuslist.clear();

                        statuslist /* length = details.length; */
                            = List.generate(details.length, (index) => null);
                      }
                    }),
                    vanToVanDetailFailedState: () {},
                  );
                }, child:
                        BlocBuilder<VanToVanDetailsBloc, VanToVanDetailsState>(
                  builder: (context, state) {
                    return state.when(
                      getVanToVanDetailsState: (details) => details == null
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 0),
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
                              itemBuilder: (context, index) => Padding(
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
                                                details[index].prdCode ?? ' ',
                                                style: kfontstyle(
                                                  fontSize: 12.sp,
                                                  color:
                                                      const Color(0xff7b70ac),
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Text(
                                                details[index].prdName ?? ' ',
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
                                                  details[index].vvdHuom ?? '',
                                                  style: kfontstyle(
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.black54),
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Text(
                                                  details[index].vvdLuom ?? '',
                                                  style: kfontstyle(
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
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
                                                  details[index].vvdHQty ?? '',
                                                  style: kfontstyle(
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.black54),
                                                ),
                                                SizedBox(
                                                  height: 10.h,
                                                ),
                                                Text(
                                                  details[index].vvdLQty ?? '',
                                                  style: kfontstyle(
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Colors.black54),
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    BlocConsumer<VanToVanApprovalBloc,
                                        VanToVanApprovalState>(
                                      listener: (context, state) {
                                        state.when(
                                          getVanToVanApproval: (response) {
                                            if (response != null) {
                                              // x

                                              if (loadingCount == 1) {
                                                loadingCount = 0;
                                                Navigator.pop(context);
                                                showCupertinoDialog(
                                                  context: context,
                                                  builder: (context) =>
                                                      CupertinoAlertDialog(
                                                    title: const Text('Alert'),
                                                    content: Text(
                                                        response.status ?? ''),
                                                    actions: [
                                                      TextButton(
                                                        onPressed: () {
                                                          _approvedCount++;
                                                          context
                                                              .read<
                                                                  VanToVanDetailsBloc>()
                                                              .add(
                                                                GetVanToVanDetailEvent(
                                                                    reqID: details[index]
                                                                            .vvdId ??
                                                                        ''),
                                                              );
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: const Text(
                                                            'Proceed'),
                                                      ),
                                                    ],
                                                  ),
                                                );

                                                // showCupertinoDialog(
                                                //   context: context,
                                                //   builder: (context) =>
                                                //       CupertinoAlertDialog(
                                                //     title: const Text('Alert'),
                                                //     content: Text(
                                                //         response.status ?? ''),
                                                //     actions: [
                                                //       TextButton(
                                                //         onPressed: () {
                                                //           _approvedCount++;
                                                //           context
                                                //               .read<
                                                //                   VanToVanDetailsBloc>()
                                                //               .add(
                                                //                   const GetVanToVanDetailEvent(
                                                //                       reqID:
                                                //                           '10'));
                                                //           Navigator.pop(context);
                                                //         },
                                                //         child:
                                                //             const Text('Proceed'),
                                                //       ),
                                                //     ],
                                                //   ),
                                                // );
                                              }
                                              // if (isApproval) {

                                              // }
                                            }
                                          },
                                          vanToVanApprovalFailedstate: () {
                                            Navigator.pop(context);
                                            showCupertinoDialog(
                                                context: context,
                                                builder: (context) =>
                                                    CupertinoAlertDialog(
                                                      title:
                                                          const Text('Alert'),
                                                      content: const Text(
                                                          "something went wrong, please try again later"),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () {
                                                            context
                                                                .read<
                                                                    VanToVanDetailsBloc>()
                                                                .add(GetVanToVanDetailEvent(
                                                                    reqID: widget
                                                                            .vanToVanHeader
                                                                            .vvhId ??
                                                                        ''));
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child:
                                                              const Text('Ok'),
                                                        )
                                                      ],
                                                    ));
                                          },
                                          vanToVanApprovalLoadingState: () {
                                            if (loadingCount == 0) {
                                              loadingCount = 1;

                                              showCupertinoModalPopup(
                                                  context: context,
                                                  barrierDismissible: false,
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
                                                        child: const PopScope(
                                                            canPop: true,
                                                            child:
                                                                CupertinoActivityIndicator(
                                                              animating: true,
                                                              color: Colors.red,
                                                              radius: 30,
                                                            )),
                                                      ));
                                            }
                                          },
                                        );
                                      },
                                      builder: (context, state) {
                                        return Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Transform.scale(
                                              scale: 0.8,
                                              child: Row(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Radio(
                                                        fillColor:
                                                            MaterialStateProperty
                                                                .resolveWith<
                                                                        Color>(
                                                                    (states) {
                                                          return (statuslist[
                                                                      index] ==
                                                                  true)
                                                              ? const Color(
                                                                  0xff0075ff)
                                                              : Colors.grey;
                                                        }),
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
                                                        onChanged: (value) {
                                                          statuslist[index] =
                                                              true;
                                                          loadingCount = 0;

                                                          setState(() {});
                                                          approvedProducts[
                                                                  index] =
                                                              VanToVanProductModel(
                                                            vvdId:
                                                                details[index]
                                                                    .vvdId,
                                                            hqty: details[index]
                                                                .vvdHQty,
                                                            lqty: details[index]
                                                                .vvdLQty,
                                                            status: 'A',
                                                          );
                                                        },
                                                      ),
                                                      Text(
                                                        'Approve',
                                                        style: kfontstyle(),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            Transform.scale(
                                              scale: 0.8,
                                              child: Row(
                                                children: [
                                                  Radio(
                                                    fillColor:
                                                        MaterialStateProperty
                                                            .resolveWith<Color>(
                                                                (states) {
                                                      return (statuslist[
                                                                      index] !=
                                                                  null &&
                                                              !statuslist[
                                                                  index]!)
                                                          ? const Color(
                                                              0xff0075ff)
                                                          : Colors.grey;
                                                    }),
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
                                                      loadingCount = 0;
                                                      setState(() {});
                                                      approvedProducts[index] =
                                                          VanToVanProductModel(
                                                        vvdId: details[index]
                                                            .vvdId,
                                                        hqty: details[index]
                                                            .vvdHQty,
                                                        lqty: details[index]
                                                            .vvdLQty,
                                                        status: 'R',
                                                      );
                                                    },
                                                  ),
                                                  Text(
                                                    'Reject',
                                                    style: kfontstyle(),
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
                              ),
                              separatorBuilder: (context, index) => Divider(
                                color: Colors.grey[300],
                              ),
                              itemCount: details.length,
                            ),
                      vanToVanDetailFailedState: () => Center(
                        child: Text(
                          'No Data Available',
                          style: kfontstyle(),
                        ),
                      ),
                    );
                  },
                )),
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
                              color: widget.vanToVanHeader.approvalStatus ==
                                      'Pending'
                                  ? Colors.green.shade300
                                  : Colors.grey[300],
                              onPressed: () {
                                if (widget.vanToVanHeader.approvalStatus ==
                                    'Pending') {
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
                                              loadingCount = 0;
                                              setState(() {});
                                              Navigator.pop(context);

                                              context
                                                  .read<VanToVanApprovalBloc>()
                                                  .add(
                                                      const VanToVanApprovalLoadingEvent());

                                              context
                                                  .read<VanToVanApprovalBloc>()
                                                  .add(GetVanToVanApprovalEent(
                                                      approvalIn:
                                                          VanToVanApprovalInParas(
                                                              products:
                                                                  approvedProducts,
                                                              userID: widget
                                                                  .user.usrId,
                                                              reqID: widget
                                                                  .vanToVanHeader
                                                                  .vvhId)));
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
            ])));
  }
}
