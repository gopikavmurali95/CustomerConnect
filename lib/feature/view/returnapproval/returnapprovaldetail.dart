import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/models/approval_reson_model/approval_reson_model.dart';
import 'package:customer_connect/feature/data/models/return_approval_header_model/return_approval_header_model.dart';
import 'package:customer_connect/feature/state/bloc/approvalreasons/approval_reasons_bloc.dart';
import 'package:customer_connect/feature/state/bloc/returnapprovaldetail/return_approval_detail_bloc.dart';
import 'package:customer_connect/feature/state/cubit/approvalradio/aapproval_or_reject_radio_cubit.dart';
import 'package:customer_connect/feature/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

bool isselected = true;

class ReturnApprovalDetailScreen extends StatefulWidget {
  final ReturnApprovalHeaderModel returnApprovel;
  const ReturnApprovalDetailScreen({super.key, required this.returnApprovel});

  @override
  State<ReturnApprovalDetailScreen> createState() =>
      _ReturnApprovalDetailScreenState();
}

List<ApprovalResonModel> selectedresons = [];
List<bool> statuslist = [];

List<ApprovalResonModel> availableresons = [];

class _ReturnApprovalDetailScreenState
    extends State<ReturnApprovalDetailScreen> {
  @override
  void initState() {
    context
        .read<ReturnApprovalDetailBloc>()
        .add(const ClearReturnDetailEvent());
    context.read<ReturnApprovalDetailBloc>().add(GetReturnApprovalDetailEvennt(
        reqID: widget.returnApprovel.rahId ?? '',
        mode: widget.returnApprovel.mode ?? ''));

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
          "Approval Detail",
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
              child: BlocConsumer<ReturnApprovalDetailBloc,
                  ReturnApprovalDetailState>(
            listener: (context, state) {
              state.when(
                getReturnApprovelDetailState: (details) {
                  if (details != null) {
                    context
                        .read<ApprovalReasonsBloc>()
                        .add(const GetApprovalReasonsEvent(rsnType: 'rsnType'));
                    statuslist.clear();
                    statuslist = List.generate(details.length, (index) => true);
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
                            itemBuilder: (context, index) => ShimmerContainers(
                                height: 60.h, width: double.infinity),
                            separatorBuilder: (context, index) => Divider(
                                  color: Colors.grey[300],
                                ),
                            itemCount: 10),
                      )
                    : ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
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
                                            details[index].huom ?? '',
                                            style: kfontstyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          Text(
                                            details[index].luom ?? '',
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
                                            details[index].returnHQty ?? '',
                                            style: kfontstyle(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.black54),
                                          ),
                                          SizedBox(
                                            height: 10.h,
                                          ),
                                          Text(
                                            details[index].returnLQty ?? '',
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
                              Row(
                                children: [
                                  Expanded(
                                    child: BlocConsumer<ApprovalReasonsBloc,
                                        ApprovalReasonsState>(
                                      listener: (context, state) {
                                        state.when(
                                          getApprovalResonsState: (resons) {
                                            if (resons != null) {
                                              selectedresons.clear();

                                              availableresons.clear();
                                              availableresons = [
                                                ApprovalResonModel(
                                                    rsnId: '10000',
                                                    rsnName: 'Select reason',
                                                    rsnType: 'null')
                                              ];
                                              availableresons.addAll(resons);
                                            }
                                          },
                                          getReasonsFailedState: () {},
                                        );
                                      },
                                      builder: (context, state) {
                                        return state.when(
                                          getApprovalResonsState: (resons) =>
                                              resons == null ||
                                                      availableresons.isEmpty
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
                                                            Colors.white,
                                                        value:
                                                            availableresons[0]
                                                                .rsnName,
                                                        style: kfontstyle(
                                                            color:
                                                                Colors.black),
                                                        decoration:
                                                            const InputDecoration(
                                                          border:
                                                              InputBorder.none,
                                                        ),
                                                        items: availableresons.map(
                                                            (ApprovalResonModel
                                                                item) {
                                                          return DropdownMenuItem(
                                                            value: item.rsnName,
                                                            child: Text(
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              item.rsnName ??
                                                                  '',
                                                              style: kfontstyle(
                                                                  fontSize:
                                                                      9.sp),
                                                            ),
                                                          );
                                                        }).toList(),
                                                        onChanged: (value) {},
                                                      ),
                                                    ),
                                          getReasonsFailedState: () =>
                                              const SizedBox(),
                                        );
                                      },
                                    ),
                                  ),
                                  BlocBuilder<AapprovalOrRejectRadioCubit,
                                      AapprovalOrRejectRadioState>(
                                    builder: (context, state) {
                                      return Row(
                                        children: [
                                          Transform.scale(
                                            scale: 0.8,
                                            child: Row(
                                              children: [
                                                Radio(
                                                  fillColor:
                                                      MaterialStateProperty
                                                          .resolveWith<
                                                              Color>((Set<
                                                                  MaterialState>
                                                              states) {
                                                    return (statuslist[index] ==
                                                            true)
                                                        ? const Color(
                                                            0xff0075ff)
                                                        : Colors.grey;
                                                  }),
                                                  /* activeColor: isselected == true
                                                                                      ? const Color(0xff0075ff)
                                                                                      : Colors.grey, */
                                                  value:
                                                      statuslist[index] == true
                                                          ? true
                                                          : false,
                                                  groupValue: true,
                                                  onChanged: (value) {
                                                    statuslist[index] = true;
                                                    setState(() {});
                                                    /*  context
                                                        .read<
                                                            AapprovalOrRejectRadioCubit>()
                                                        .changeApprovalStatus(
                                                            statuslist[index]); */
                                                  },
                                                ),
                                                Text(
                                                  'Approve',
                                                  style: kfontstyle(),
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
                                                          .resolveWith<
                                                              Color>((Set<
                                                                  MaterialState>
                                                              states) {
                                                    return (!statuslist[index])
                                                        ? const Color(
                                                            0xff0075ff)
                                                        : Colors.grey;
                                                  }),
                                                  /*  activeColor: isselected == false
                                                                                      ? const Color(0xff0075ff)
                                                                                      : Colors.grey, */
                                                  value:
                                                      statuslist[index] == true
                                                          ? true
                                                          : false,
                                                  groupValue: false,
                                                  onChanged: (value) {
                                                    statuslist[index] = false;
                                                    setState(() {});
                                                    /* context
                                                        .read<
                                                            AapprovalOrRejectRadioCubit>()
                                                        .changeApprovalStatus(
                                                            statuslist[index]); */
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
                              )
                            ],
                          ),
                        ),
                        separatorBuilder: (context, index) => Divider(
                          color: Colors.grey[300],
                        ),
                        itemCount: details.length,
                      ),
                returnApprovalDetailFailedState: () => Center(
                  child: Text(
                    'No Data Available',
                    style: kfontstyle(),
                  ),
                ),
              );
            },
          ))
        ],
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
