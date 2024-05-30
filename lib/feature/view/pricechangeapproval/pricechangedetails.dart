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
import 'package:customer_connect/feature/state/cubit/cubit/navigateto_back_cubit.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceChangeDetail extends StatefulWidget {
  final PriceChangeHeaderModel priceChangeApprovel;
  final LoginUserModel user;
  const PriceChangeDetail(
      {super.key, required this.priceChangeApprovel, required this.user});

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

List<PriceChangeReasonModel> availableresons = [];

class _PriceChangeDetailState extends State<PriceChangeDetail> {
  @override
  void initState() {
    _procechangeapproved.clear();
    _approvedCount = 0;
    _totalcount = 0;
    loadingCount = 0;
    context.read<PriceChangeDetailsBloc>().add(const ClearPriceChangeDetails());
    context.read<PriceChangeDetailsBloc>().add(
        GetPriceChangeDetailsEvent(pchID: widget.priceChangeApprovel.pchId!));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log(jsonEncode(_procechangeapproved));
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
          "Price Change Detail",
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
                rotID: widget.priceChangeApprovel.pchRotId!));
            // context.read<NavigatetoBackCubit>().popFromScreen(true);
            // }
          },
          child: Column(
            children: [
              BlocListener<ApprovePriceChangeBloc, ApprovePriceChangeState>(
                listener: (context, state) {
                  state.when(
                    getPriceChangeApprovalState: (response) {
                      if (response != null) {
                        // Navigator.pop(context);
                        isLoading = false;
                        if (response.mode == '1') {
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
                                  },
                                  child: const Text('Ok'),
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
                  child: Column(
                    children: [
                      Container(
                        height: 30.h,
                        width: double.infinity,
                        color: const Color(0xfff5f5f5),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: [
                              Text(
                                'Item',
                                style: kfontstyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black54),
                              ),
                              SizedBox(
                                width: 200.w,
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

                                for (int i = 0; i < pdet.length; i++) {
                                  if (pdet[i].pcdApprovalStatus!.isNotEmpty) {
                                    if (pdet[i].pcdApprovalStatus == 'A') {
                                      statuslist[i] = true;
                                    } else {
                                      statuslist[i] = false;
                                    }
                                  }
                                }
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
                                : ListView.separated(
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) => Padding(
                                      padding: const EdgeInsets.only(
                                          left: 20, right: 25),
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
                                                      pdet[index].prdCode ?? '',
                                                      style: kfontstyle(
                                                        fontSize: 12.sp,
                                                        color: const Color(
                                                            0xff7b70ac),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    Text(
                                                      pdet[index].prdName ?? '',
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
                                              // SizedBox(
                                              //   width: 145.w,
                                              // ),
                                              Column(
                                                children: [
                                                  Text(
                                                    pdet[index].pcdHigherUom ??
                                                        '',
                                                    style: kfontstyle(
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.black54),
                                                  ),
                                                  Text(
                                                    pdet[index].pcdLowerUom ??
                                                        '',
                                                    style: kfontstyle(
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.black54),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                width: 50.w,
                                              ),
                                              Column(
                                                children: [
                                                  Text(
                                                    pdet[index].pcdHigherQty ??
                                                        '',
                                                    style: kfontstyle(
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.black54),
                                                  ),
                                                  Text(
                                                    pdet[index].pcdLowerQty ??
                                                        '',
                                                    style: kfontstyle(
                                                        fontSize: 12.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.black54),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: BlocConsumer<
                                                    PriceChangeReasonsBloc,
                                                    PriceChangeReasonsState>(
                                                  listener: (context, state) {
                                                    state.when(
                                                      getPriceChangeReasons:
                                                          (resons) {
                                                        if (resons != null) {
                                                          selectedresons
                                                              .clear();

                                                          availableresons
                                                              .clear();
                                                          availableresons = [
                                                            PriceChangeReasonModel(
                                                                rsnId: '-1',
                                                                rsnName:
                                                                    'Select reason',
                                                                rsnType: 'null')
                                                          ];

                                                          selectedresons =
                                                              List.generate(
                                                                  pdet.length,
                                                                  (index) =>
                                                                      '-1');
                                                          availableresons
                                                              .addAll(resons);
                                                        }
                                                      },
                                                      priceChangeReasonFailed:
                                                          () {},
                                                    );
                                                  },
                                                  builder: (context, state) {
                                                    return state.when(
                                                      getPriceChangeReasons:
                                                          (resons) => resons ==
                                                                      null ||
                                                                  availableresons
                                                                      .isEmpty
                                                              ? const ShimmerContainers(
                                                                  height: 30,
                                                                  width: 80,
                                                                )
                                                              : SizedBox(
                                                                  // height: 30.h,
                                                                  // width: MediaQuery.of(context).size.width / 3,
                                                                  child:
                                                                      DropdownButtonFormField(
                                                                    dropdownColor:
                                                                        Colors
                                                                            .white,
                                                                    value: availableresons[0]
                                                                            .rsnId ??
                                                                        '',
                                                                    style: kfontstyle(
                                                                        color: Colors
                                                                            .black),
                                                                    decoration:
                                                                        const InputDecoration(
                                                                      border: InputBorder
                                                                          .none,
                                                                    ),
                                                                    items: availableresons.map(
                                                                        (PriceChangeReasonModel
                                                                            item) {
                                                                      return DropdownMenuItem(
                                                                        value: item
                                                                            .rsnId,
                                                                        child:
                                                                            Text(
                                                                          overflow:
                                                                              TextOverflow.ellipsis,
                                                                          item.rsnName ??
                                                                              '',
                                                                          style:
                                                                              kfontstyle(fontSize: 9.sp),
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
                                                builder: (context, state) {
                                                  return AbsorbPointer(
                                                    absorbing: pdet[index]
                                                            .pcdApprovalStatus!
                                                            .isNotEmpty
                                                        ? true
                                                        : false,
                                                    child: Row(
                                                      children: [
                                                        Transform.scale(
                                                          scale: 0.8,
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
                                                                      ? const Color(
                                                                          0xff0075ff)
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
                                                                  if (selectedresons[
                                                                          index] ==
                                                                      '-1') {
                                                                    showCupertinoDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) =>
                                                                              CupertinoAlertDialog(
                                                                        title: const Text(
                                                                            'Alert'),
                                                                        content:
                                                                            const Text("Plese select a reason"),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed:
                                                                                () {
                                                                              Navigator.pop(context);
                                                                            },
                                                                            child:
                                                                                const Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    );
                                                                  } else {
                                                                    statuslist[
                                                                            index] =
                                                                        true;
                                                                    loadingCount =
                                                                        0;
                                                                    setState(
                                                                        () {});

                                                                    _procechangeapproved[index] = PriceChangePrdModel(
                                                                        aprvdHprice:
                                                                            pdet[index]
                                                                                .maxHigherlimit,
                                                                        aprvdLprice:
                                                                            pdet[index]
                                                                                .maxLowerlimit,
                                                                        pcdId: pdet[index]
                                                                            .pcdId,
                                                                        reason: selectedresons[
                                                                            index],
                                                                        status:
                                                                            "A");
                                                                  }
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
                                                                fillColor: MaterialStateProperty
                                                                    .resolveWith<
                                                                        Color>((Set<
                                                                            MaterialState>
                                                                        states) {
                                                                  return (statuslist[index] !=
                                                                              null &&
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
                                                                  if (selectedresons[
                                                                          index] ==
                                                                      '-1') {
                                                                    showCupertinoDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) =>
                                                                              CupertinoAlertDialog(
                                                                        title: const Text(
                                                                            'Alert'),
                                                                        content:
                                                                            const Text("Plese select a reason"),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed:
                                                                                () {
                                                                              Navigator.pop(context);
                                                                            },
                                                                            child:
                                                                                const Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    );
                                                                  } else {
                                                                    statuslist[
                                                                            index] =
                                                                        false;

                                                                    loadingCount =
                                                                        0;
                                                                    setState(
                                                                        () {});
                                                                    _procechangeapproved[index] = PriceChangePrdModel(
                                                                        aprvdHprice:
                                                                            pdet[index]
                                                                                .maxHigherlimit,
                                                                        aprvdLprice:
                                                                            pdet[index]
                                                                                .maxLowerlimit,
                                                                        pcdId: pdet[index]
                                                                            .pcdId,
                                                                        reason: selectedresons[
                                                                            index],
                                                                        status:
                                                                            "A");
                                                                  }
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
                                                    ),
                                                  );
                                                },
                                              )
                                            ],
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
                                'No Data Available',
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
                                                          userId:
                                                              widget.user.usrId,
                                                          products:
                                                              _procechangeapproved),
                                                    ),
                                                  );
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
            ],
          ),
        ),
      ),
    );
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
