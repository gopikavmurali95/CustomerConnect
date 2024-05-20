import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/van_to_van_approval_in_paras/van_to_van_approval_in_paras.dart';
import 'package:customer_connect/feature/data/models/van_to_van_header_model/van_to_van_header_model.dart';
import 'package:customer_connect/feature/state/bloc/vantovanapproval/van_to_van_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/vantovandetails/van_to_van_details_bloc.dart';
import 'package:customer_connect/feature/view/assetremoval/assetremovalscreen.dart';
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

class _VanToVanApprovalDetailsState extends State<VanToVanApprovalDetails> {
  @override
  void initState() {
    context.read<VanToVanDetailsBloc>().add(const clearVanToVanDetailEvent());
    context
        .read<VanToVanDetailsBloc>()
        .add(GetVanToVanDetailEvent(reqID: widget.vanToVanHeader.vvhId ?? ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          "Van To Van approval Details",
          style: appHeading(),
        ),
      ),
      body: Column(
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
            child: BlocListener<VanToVanDetailsBloc, VanToVanDetailsState>(
              listener: (context, state) {
                state.when(
                  getVanToVanDetailsState: (details) {
                    if (details != null) {
                      statuslist =
                          List.generate(details.length, (index) => null);
                    }
                  },
                  vanToVanDetailFailedState: () {},
                );
              },
              child: BlocBuilder<VanToVanDetailsBloc, VanToVanDetailsState>(
                builder: (context, state) {
                  return state.when(
                    getVanToVanDetailsState: (details) => details == null
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
                            itemBuilder: (context, index) {
                              return Padding(
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
                                              Navigator.pop(context);
                                              showCupertinoDialog(
                                                  context: context,
                                                  builder: (context) =>
                                                      CupertinoAlertDialog(
                                                        title:
                                                            const Text('Alert'),
                                                        content: Text(
                                                            response.status ??
                                                                ''),
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
                                                            },
                                                            child: const Text(
                                                                'Proceed'),
                                                          )
                                                        ],
                                                      ));
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
                                              showCupertinoDialog(
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
                                                          showCupertinoDialog(
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
                                                                    statuslist[
                                                                            index] =
                                                                        true;
                                                                    loadingCount =
                                                                        0;
                                                                    setState(
                                                                        () {});
                                                                    context
                                                                        .read<
                                                                            VanToVanApprovalBloc>()
                                                                        .add(
                                                                            const VanToVanApprovalLoadingEvent());
                                                                    context
                                                                        .read<
                                                                            VanToVanApprovalBloc>()
                                                                        .add(GetVanToVanApprovalEent(
                                                                            approvalIn: VanToVanApprovalInParas(
                                                                          vvdId:
                                                                              details[index].vvdId,
                                                                          hqty:
                                                                              details[index].vvdHQty,
                                                                          lqty:
                                                                              details[index].vvdLQty,
                                                                          status:
                                                                              'A',
                                                                          userID: widget
                                                                              .user
                                                                              .usrId,
                                                                          reqID: widget
                                                                              .vanToVanHeader
                                                                              .vvhId,
                                                                        )));
                                                                    Navigator.pop(
                                                                        context);
                                                                  },
                                                                  child: const Text(
                                                                      'Proceed'),
                                                                )
                                                              ],
                                                            ),
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
                                                      showCupertinoDialog(
                                                          context: context,
                                                          builder: (context) =>
                                                              CupertinoAlertDialog(
                                                                title:
                                                                    const Text(
                                                                        'Alert'),
                                                                content: const Text(
                                                                    "Do you Want to Reject this product"),
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
                                                                      statuslist[
                                                                              index] =
                                                                          false;
                                                                      loadingCount =
                                                                          0;
                                                                      setState(
                                                                          () {});
                                                                      context
                                                                          .read<
                                                                              VanToVanApprovalBloc>()
                                                                          .add(
                                                                              const VanToVanApprovalLoadingEvent());
                                                                      context.read<VanToVanApprovalBloc>().add(GetVanToVanApprovalEent(
                                                                          approvalIn: VanToVanApprovalInParas(
                                                                              vvdId: details[index].vvdId,
                                                                              hqty: details[index].vvdHQty,
                                                                              lqty: details[index].vvdLQty,
                                                                              status: 'R',
                                                                              userID: widget.user.usrId,
                                                                              reqID: widget.vanToVanHeader.vvhId)));
                                                                      //approval event;
                                                                      Navigator.pop(
                                                                          context);
                                                                    },
                                                                    child: const Text(
                                                                        'Proceed'),
                                                                  )
                                                                ],
                                                              ));
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
                              );
                            },
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
              ),
            ),
          ),
        ],
      ),
    );
  }
}
